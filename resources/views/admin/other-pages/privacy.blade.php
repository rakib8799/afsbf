@extends('admin.layouts.app')

@section('main_content')
<div class="main-content">
    <section class="section">
        <div class="section-header d-flex justify-content-between">
            <h1>Edit Privacy Page Content</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="{{ route('admin.privacy.update') }}" method="post">
                                @csrf
                                <div class="form-group mb-3">
                                    <label>Content <span class="text-danger">*</span></label>
                                    <textarea name="privacy_content" class="form-control editor" cols="30" rows="10">{{ $privacy->privacy_content }}</textarea>
                                    @if ($errors->has('privacy_content'))
                                        <span class="text-danger">{{ $errors->first('privacy_content') }}</span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection