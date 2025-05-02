@extends('admin.layouts.app')

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
                                <div class="invoice-number">Order #{{ $ticketData->payment_id }}</div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-6">
                                    <address>
                                        <strong>Invoice To</strong><br>
                                        {{ $userData->name }}<br>
                                        {{ $userData->email }}
                                    </address>
                                </div>
                                <div class="col-md-6" style="text-align:right;">
                                    <address>
                                        <strong>Invoice Date</strong><br>
                                        {{ $ticketData->created_at->format('M d, Y') }}<br><br>
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
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            @php
                                            $program = App\Models\Program::find($ticketData->program_id);
                                            @endphp
                                            {{ $program->name }}
                                        </td>
                                        <td class="text-center">${{ $ticketData->unit_price }}</td>
                                        <td class="text-center">{{ $ticketData->number_of_tickets }}</td>
                                        <td class="text-right">${{ $ticketData->total_price }}</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="row mt-4">
                                <div class="col-lg-12 text-right">
                                    <div class="invoice-detail-item">
                                        <div class="invoice-detail-name">Total</div>
                                        <div class="invoice-detail-value invoice-detail-value-lg">${{ $ticketData->total_price }}</div>
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