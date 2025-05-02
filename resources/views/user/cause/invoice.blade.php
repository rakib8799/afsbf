@extends('user.layouts.app')

@section('main_content')
<div class="main-content">
    <section class="section">
        <div class="section-header d-flex justify-content-between">
            <h1>Invoice</h1>
        </div>
        <div class="section-body">
            <div class="invoice">
                <div class="invoice-print">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="invoice-title">
                                <h2>Invoice</h2>
                                <div class="invoice-number">Order #{{ $donation_data->payment_id }}</div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-6">
                                    <address>
                                        <strong>Invoice To</strong><br>
                                        {{ auth()->user()->name }}<br>
                                        {{ auth()->user()->email }}
                                    </address>
                                </div>
                                <div class="col-md-6" style="text-align:right;">
                                    <address>
                                        <strong>Invoice Date</strong><br>
                                        {{ $donation_data->created_at->format('M d, Y') }}<br><br>
                                    </address>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row mt-4">
                        <div class="col-md-12">
                            <div class="section-title">Order Summary</div>
                            <p class="section-lead">The detail about the donation is shown below:</p>
                            <hr class="invoice-above-table">
                            <div class="table-responsive">
                                <table class="table table-striped table-hover table-md">
                                    <tr>
                                        <th>SL</th>
                                        <th>Cause Name</th>
                                        <th class="text-center">Type</th>
                                        <th class="text-center">Price</th>
                                        <th class="text-center">Qty</th>
                                        <th class="text-right">Subtotal</th>
                                        <th>Payment Method</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            @php
                                            $cause = App\Models\Cause::find($donation_data->cause_id);
                                            @endphp
                                            {{ $cause->name }}
                                        </td>
                                        <td class="text-center">{{ $donation_data->donation_type }}</td>
                                        <td class="text-center">${{ $donation_data->price }}</td>
                                        <td class="text-center">1</td>
                                        <td class="text-right">${{ $donation_data->price }}</td>
                                        <td>{{ $donation_data->payment_method }}</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="row mt-4">
                                <div class="col-lg-12 text-right">
                                    <div class="invoice-detail-item">
                                        <div class="invoice-detail-name">Total</div>
                                        <div class="invoice-detail-value invoice-detail-value-lg">${{ $donation_data->price }}</div>
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
    </section>
</div>
@endsection