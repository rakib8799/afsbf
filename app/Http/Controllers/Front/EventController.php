<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Event;
use App\Models\EventPhoto;
use App\Models\EventVideo;
use App\Models\Admin;
use App\Mail\Websitemail;
use Srmklive\PayPal\Services\PayPal as PayPalClient;
use Stripe\StripeClient;
use App\Models\EventTicket;
use App\Models\Program;
use App\Models\ProgramTicket;
use Illuminate\Support\Facades\Mail;

class EventController extends Controller
{
    public function index()
    {
        $events = Event::all();
        return view('front.events', compact('events'));
    }

    public function show($slug)
    {
        $event = Event::where('slug', $slug)->first();
        $event_photos = EventPhoto::where('event_id',$event->id)->get();
        $event_videos = EventVideo::where('event_id',$event->id)->get();
        $recent_events = Event::orderBy('id', 'desc')->take(5)->get();
        return view('front.event', compact('event', 'event_photos', 'event_videos', 'recent_events'));
    }

    public function sendMessage(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'message' => 'required'
        ]);

        $admin_data = Admin::where('id',1)->first();
        $admin_email = $admin_data->email;

        $event_data = Event::where('id',$request->event_id)->first();

        $subject = "Message from visitor for Event - ".$event_data->name;
        $message = "<b>Visitor Information:</b><br><br>";
        $message .= "Name: ".$request->name."<br>";
        $message .= "Email: ".$request->email."<br>";
        $message .= "Phone: ".$request->phone."<br>";
        $message .= "Message: ".$request->message."<br><br>";
        $message .= "<b>Event Page URL: </b><br>";
        $message .= "<a href='".url('/event/'.$event_data->slug)."'>".url('/event/'.$event_data->slug)."</a>";

        Mail::to($admin_email)->send(new Websitemail($subject,$message));

        return redirect()->back()->with('success','Message sent successfully');
    }

    public function payment(Request $request)
    {
        if(!auth()->user()) {
            return redirect()->route('login');
        }

        $request->validate([
            'number_of_tickets' => 'required',
            'payment_method' => 'required'
        ]);

        $event_data = Event::where('id',$request->event_id)->first();

        if($event_data->total_seat > 0) {
            $remaining_seat = $event_data->total_seat - $event_data->booked_seat;
            if($event_data->booked_seat + $request->number_of_tickets > $event_data->total_seat) {
                return redirect()->back()->with('error','Sorry, only '.$remaining_seat.' tickets/seats are available');
            }
        }

        $total_price = $request->number_of_tickets * $request->unit_price;

        if($request->payment_method == 'paypal') {
            $provider = new PayPalClient;
            $provider->setApiCredentials(config('paypal'));
            $paypalToken = $provider->getAccessToken();
            $response = $provider->createOrder([
                "intent" => "CAPTURE",
                "application_context" => [
                    "return_url" => route('event.ticket.payment.paypal'),
                    "cancel_url" => route('event.ticket.payment.cancel')
                ],
                "purchase_units" => [
                    [
                        "amount" => [
                            "currency_code" => "USD",
                            "value" => $total_price
                        ]
                    ]
                ]
            ]);
            //dd($response);
            if(isset($response['id']) && $response['id']!=null) {
                foreach($response['links'] as $link) {
                    if($link['rel'] === 'approve') {
                        session()->put('event_id', $request->event_id);
                        session()->put('unit_price', $request->unit_price);
                        session()->put('number_of_tickets', $request->number_of_tickets);
                        session()->put('total_price', $total_price);
                        return redirect()->away($link['href']);
                    }
                }
            } else {
                return redirect()->route('event.ticket.payment.cancel');
            }
        }

        if($request->payment_method == 'stripe') {
            $stripe = new StripeClient(config('stripe.stripe_sk'));
            $response = $stripe->checkout->sessions->create([
                'line_items' => [
                    [
                        'price_data' => [
                            'currency' => 'usd',
                            'product_data' => [
                                'name' => $event_data->name,
                            ],
                            'unit_amount' => $total_price*100,
                        ],
                        'quantity' => $request->number_of_tickets,
                    ],
                ],
                'mode' => 'payment',
                'success_url' => route('event.ticket.payment.stripe').'?session_id={CHECKOUT_SESSION_ID}',
                'cancel_url' => route('event.ticket.payment.cancel'),
            ]);
            //dd($response);
            if(isset($response->id) && $response->id != ''){
                session()->put('event_id', $request->event_id);
                session()->put('unit_price', $request->unit_price);
                session()->put('number_of_tickets', $request->number_of_tickets);
                session()->put('total_price', $total_price);
                return redirect($response->url);
            } else {
                return redirect()->route('event.ticket.payment.cancel');
            }
        }
    }


    public function paymentPaypal(Request $request)
    {
        $provider = new PayPalClient;
        $provider->setApiCredentials(config('paypal'));
        $paypalToken = $provider->getAccessToken();
        $response = $provider->capturePaymentOrder($request->token);
        //dd($response);
        if(isset($response['status']) && $response['status'] == 'COMPLETED') {

            // Insert data into database
            $obj = new ProgramTicket;
            $obj->event_id = session()->get('event_id');
            $obj->user_id = auth()->user()->id;
            $obj->unit_price = session()->get('unit_price');
            $obj->number_of_tickets = session()->get('number_of_tickets');
            $obj->total_price = session()->get('total_price');
            $obj->currency = $response['purchase_units'][0]['payments']['captures'][0]['amount']['currency_code'];
            $obj->payment_id = $response['id'];
            $obj->payment_method = "PayPal";
            $obj->payment_status = $response['status'];
            $obj->save();

            $event_data = Program::where('id',session()->get('event_id'))->first();
            $event_data->booked_seat = $event_data->booked_seat + session()->get('number_of_tickets');
            $event_data->update();

            unset($_SESSION['event_id']);
            unset($_SESSION['unit_price']);
            unset($_SESSION['number_of_tickets']);
            unset($_SESSION['total_price']);

            return redirect()->route('event.show',$event_data->slug)->with('success','Payment completed successfully');

        } else {
            return redirect()->route('event.ticket.payment.cancel');
        }
    }


    public function paymentStripe(Request $request)
    {
        if(isset($request->session_id)) {

            $stripe = new \Stripe\StripeClient(config('stripe.stripe_sk'));
            $response = $stripe->checkout->sessions->retrieve($request->session_id);
            //dd($response);



            // Insert data into database
            $obj = new ProgramTicket;
            $obj->event_id = session()->get('event_id');
            $obj->user_id = auth()->user()->id;
            $obj->unit_price = session()->get('unit_price');
            $obj->number_of_tickets = session()->get('number_of_tickets');
            $obj->total_price = session()->get('total_price');
            $obj->currency = $response->currency;
            $obj->payment_id = $response->id;
            $obj->payment_method = "Stripe";
            $obj->payment_status = "COMPLETED";
            $obj->save();

            $event_data = Program::where('id',session()->get('event_id'))->first();
            $event_data->booked_seat = $event_data->booked_seat + session()->get('number_of_tickets');
            $event_data->update();

            unset($_SESSION['event_id']);
            unset($_SESSION['unit_price']);
            unset($_SESSION['number_of_tickets']);
            unset($_SESSION['total_price']);

            return redirect()->route('event.show', $event_data->slug)->with('success','Payment completed successfully');

        } else {
            return redirect()->route('event.ticket.payment.cancel');
        }
    }


    public function freeBooking(Request $request)
    {
        if(!auth()->user()) {
            return redirect()->route('login');
        }

        $request->validate([
            'number_of_tickets' => 'required'
        ]);

        $event_data = Program::where('id',$request->event_id)->first();

        if($event_data->total_seat > 0) {
            $remaining_seat = $event_data->total_seat - $event_data->booked_seat;
            if($event_data->booked_seat + $request->number_of_tickets > $event_data->total_seat) {
                return redirect()->back()->with('error','Sorry, only '.$remaining_seat.' tickets/seats are available');
            }
        }

        $total_price = $request->number_of_tickets * $request->unit_price;

        // Insert data into database
        $obj = new ProgramTicket;
        $obj->event_id = $request->event_id;
        $obj->user_id = auth()->user()->id;
        $obj->unit_price = $request->unit_price;
        $obj->number_of_tickets = $request->number_of_tickets;
        $obj->total_price = $total_price;
        $obj->currency = "";
        $obj->payment_id = "payment_no_".time();
        $obj->payment_method = "Free";
        $obj->payment_status = "COMPLETED";
        $obj->save();

        $event_data = Program::where('id',$request->event_id)->first();
        $event_data->booked_seat = $event_data->booked_seat + $request->number_of_tickets;
        $event_data->update();

        return redirect()->route('event.show',$event_data->slug)->with('success','Booking completed successfully');

    }


    public function paymentCancel()
    {
        return redirect()->route('home')->with('error','Payment is cancelled');
    }


}
