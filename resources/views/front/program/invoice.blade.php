@extends('front.layouts.app')

@section('main_content')
<div class="page-top" style="background-image: url({{ asset('uploads/photo/'.$global_setting_data->banner) }})">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Invoice</h2>
                <div class="breadcrumb-container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Invoice Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="pt_70 pb_70">
    <div class="container">
        <div class="row gy-4 d-flex justify-content-center">
{{-- <div class="main-content">
    <section class="section"> --}}
        {{-- <div class="section-header d-flex justify-content-between"> --}}
            <h1>Invoice</h1>
        {{-- </div> --}}
        <div class="section-body">
            <div class="invoice">
                <div class="invoice-print">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="invoice-title">
                                <h2>Invoice</h2>
                                <div class="invoice-number">Order #{{ $programTicket->payment_id }}</div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-6">
                                    <address>
                                        <strong>Invoice To</strong><br>
                                        {{ $user->name }}<br>
                                        {{ $user->email }}
                                    </address>
                                </div>
                                <div class="col-md-6" style="text-align:right;">
                                    <address>
                                        <strong>Invoice Date</strong><br>
                                        {{ $programTicket->created_at->format('M d, Y') }}<br><br>
                                    </address>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row mt-4">
                        <div class="col-md-12">
                            <div class="section-title">Order Summary</div>
                            <p class="section-lead">The detail about the ticket purchase is shown below:</p>
                            <hr class="invoice-above-table">
                            <div class="table-responsive">
                                <table class="table table-striped table-hover table-md">
                                    <tr>
                                        <th>SL</th>
                                        <th>Program Name</th>
                                        <th class="text-center">Price</th>
                                        <th class="text-center">Qty</th>
                                        <th class="text-right">Subtotal</th>
                                        <th>Payment Method</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            @php
                                            $event = App\Models\Program::find($programTicket->program_id);
                                            @endphp
                                            {{ $event->name }}
                                        </td>
                                        <td class="text-center">${{ $programTicket->unit_price }}</td>
                                        <td class="text-center">{{ $programTicket->number_of_tickets }}</td>
                                        <td class="text-right">${{ $programTicket->total_price }}</td>
                                        <td>{{ $programTicket->payment_method }}</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="row mt-4">
                                <div class="col-lg-12 text-right">
                                    <div class="invoice-detail-item">
                                        <div class="invoice-detail-name">Total</div>
                                        <div class="invoice-detail-value invoice-detail-value-lg">${{ $programTicket->total_price }}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr class="about-print-button">
                <div class="text-md-right">
                    <a href="javascript:window.print();" class="btn btn-warning btn-icon icon-left text-white print-invoice-button"><i class="fas fa-print"></i> Print</a>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
@endsection