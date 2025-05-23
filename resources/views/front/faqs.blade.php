@extends('front.layouts.app')

@section('main_content')
<div class="page-top" style="background-image: url({{ asset('uploads/photo/'.$global_setting_data->banner) }})">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>FAQs</h2>
                <div class="breadcrumb-container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active">FAQs</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="faq pt_70 pb_40">
    <div class="container">
        <div class="row">
            <div class="col-md-12 d-flex justify-content-center">
                <div class="accordion" id="accordionExample">
                    @foreach($faqs as $faq)
                    <div class="accordion-item mb_30">
                        <h2 class="accordion-header" id="heading_{{ $loop->iteration }}">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse_{{ $loop->iteration }}" aria-expanded="false" aria-controls="collapse_{{ $loop->iteration }}">
                                {{ $faq->question }}
                            </button>
                        </h2>
                        <div id="collapse_{{ $loop->iteration }}" class="accordion-collapse collapse" aria-labelledby="heading_{{ $loop->iteration }}" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                {!! $faq->answer !!}
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@endsection