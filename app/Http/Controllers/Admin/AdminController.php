<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Mail\Websitemail;
use App\Models\Appeal;
use App\Models\Cause;
use App\Models\CauseDonation;
use App\Models\Executive;
use App\Models\News;
use App\Models\Orphan;
use App\Models\Testimonial;
use App\Models\User;
use App\Models\Volunteer;
use App\Models\Post;
use App\Models\Photo;
use App\Models\Program;
use App\Models\Video;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class AdminController extends Controller
{
    public function dashboard()
    {
        $total_causes = Cause::count();
        $total_orphans = Orphan::count();
        $total_donations = CauseDonation::sum('price');
        $total_appeals = Appeal::count();
        $total_programs = Program::count();
        $total_testimonials = Testimonial::count();
        $total_users = User::count();
        $total_executives = Executive::count();
        $total_volunteers = Volunteer::count();
        $total_posts = Post::count();
        $total_news = News::count();
        $total_photos = Photo::count();
        $total_videos = Video::count();
        return view('admin.dashboard', compact('total_causes', 'total_orphans', 'total_donations', 'total_appeals', 'total_programs', 'total_testimonials', 'total_users', 'total_executives', 'total_volunteers', 'total_posts', 'total_news', 'total_photos', 'total_videos'));
    }
    public function edit_profile()
    {
        return view('admin.edit_profile');
    }
    public function edit_profile_submit(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email,' . Auth::guard('admin')->user()->id
        ]);

        $admin_data = Admin::find(Auth::guard('admin')->user()->id);

        if($request->photo != null) {
            $request->validate([
                'photo' => 'image|mimes:jpg,jpeg,png',
            ]);
            //dd($request->photo->extension());

            $filePath = public_path('uploads/photo/'.Auth::guard('admin')->user()->photo);
            if(Auth::guard('admin')->user()->photo != null && $filePath) {
                unlink($filePath);
            }

            $final_name = time().'.'.$request->photo->extension();
            $request->photo->storeAs('public/uploads/photo/', $final_name);
            $admin_data->photo = $final_name;
        }

        $admin_data->name = $request->name;
        $admin_data->email = $request->email;
        $admin_data->update();

        return redirect()->back()->with('success','Profile updated successfully');
    }

    public function change_password_submit(Request $request)
    {
        $admin_data = Admin::find(Auth::guard('admin')->user()->id);

        $request->validate([
            'password' => 'required',
            'password_confirmation' => 'required|same:password',
        ]);
        $admin_data->password = Hash::make($request->password);

        $admin_data->save();

        return redirect()->back()->with('success','Password updated successfully');
    }

    public function login()
    {
        return view('admin.login');
    }
    public function login_submit(Request $request)
    {
        //dd($request->all());
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $check = $request->all();
        $data = [
            'email' => $check['email'],
            'password' => $check['password'],
        ];

        if(Auth::guard('admin')->attempt($data)) {
            return redirect()->route('admin.admin_dashboard')->with('success','Login Successfull');
        } else {
            return redirect()->route('admin_login')->with('error','Invalid Credentials');
        }
    }
    public function logout()
    {
        Auth::guard('admin')->logout();
        return redirect()->route('admin_login')->with('success','Logout Successfully');
    }

    public function forget_password()
    {
        return view('admin.forget-password');
    }

    public function forget_password_submit(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
        ]);

        $admin_data = Admin::where('email',$request->email)->first();
        if(!$admin_data) {
            return redirect()->back()->with('error','Email not found');
        }

        $token = hash('sha256',time());
        $admin_data->token = $token;
        $admin_data->update();

        $reset_link = url('admin/reset-password/'.$token.'/'.$request->email);
        $subject = "Reset Password";
        $message = "Please click on below link to reset your password<br><br>";
        $message .= "<a href='".$reset_link."'>Click Here</a>";

        Mail::to($request->email)->send(new Websitemail($subject,$message));

        return redirect()->back()->with('success','Reset password link sent on your email');
    }

    public function reset_password($token,$email)
    {
        $admin_data = Admin::where('email',$email)->where('token',$token)->first();
        if(!$admin_data) {
            return redirect()->route('admin_login')->with('error','Invalid token or email');
        }
        return view('admin.reset-password', compact('token','email'));
    }

    public function reset_password_submit(Request $request)
    {
        $request->validate([
            'password' => 'required',
            'password_confirmation' => 'required|same:password',
        ]);

        $admin_data = Admin::where('email',$request->email)->where('token',$request->token)->first();
        $admin_data->password = Hash::make($request->password);
        $admin_data->token = "";
        $admin_data->update();

        return redirect()->route('admin_login')->with('success','Password reset successfully');
    }
}
