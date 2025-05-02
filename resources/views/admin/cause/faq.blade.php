@extends('admin.layouts.app')

@section('main_content')
<div class="main-content">
    <section class="section">
        <div class="section-header d-flex justify-content-between">
            <h1>Cause ({{ $cause_single->name }}) FAQs</h1>
            <div>
                <a href="{{ route('admin.causes.index') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Back to Causes</a>
            </div>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <form action="{{ route('admin.admin_cause_faq_submit') }}" method="post">
                                @csrf
                                <input type="hidden" name="cause_id" value="{{ $cause_single->id }}">
                                <div class="form-group mb-3">
                                    <label for="question">Question <span class="text-danger">*</span></label>
                                    <input type="text" name="question" class="form-control" id="question" placeholder="Please enter question" value="{{ old('question') }}">
                                    @if ($errors->has('question'))
                                        <span class="text-danger">{{ $errors->first('question') }}</span>
                                    @endif
                                </div>
                                <div class="form-group mb-3">
                                    <label for="answer">Answer <span class="text-danger">*</span></label>
                                    <textarea name="answer" class="form-control h_150" cols="30" rows="10" id="answer" placeholder="Please enter answer">{{ old('answer') }}</textarea>
                                    @if ($errors->has('answer'))
                                        <span class="text-danger">{{ $errors->first('answer') }}</span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="example1">
                                    <thead>
                                        <tr>
                                            <th>SL</th>
                                            <th>Question</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($cause_faqs as $item)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>
                                                {{ $item->question }}
                                            </td>
                                            <td class="pt_10 pb_10">
                                                <a href="" class="btn btn-primary btn-sm"  data-bs-toggle="modal" data-bs-target="#exampleModal{{ $loop->iteration }}"><i class="fas fa-edit"></i></a>
                                                <form id="delete-form-{{ $item->id }}" action="{{ route('admin.admin_cause_faq_delete', $item->id) }}" method="post" style="display: inline;">
                                                    @csrf
                                                    @method('delete')
                                                    <button type="button" class="btn btn-danger btn-sm" onClick="confirmDelete({{ $item->id }})"><i class="fas fa-trash"></i></button>
                                                </form>
                                            </td>
                                        </tr>
                                        <div class="modal fade" id="exampleModal{{ $loop->iteration }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Edit FAQ</h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form action="{{ route('admin.admin_cause_faq_update',$item->id) }}" method="post">
                                                            @csrf
                                                            <div class="mb-3">
                                                                <label for="question">Question <span class="text-danger">*</span></label>
                                                                <input type="text" name="question" class="form-control" id="question" placeholder="Please enter question" value="{{ $item->question }}">
                                                                @if ($errors->has('question'))
                                                                    <span class="text-danger">{{ $errors->first('question') }}</span>
                                                                @endif
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="answer">Answer <span class="text-danger">*</span></label>
                                                                <textarea name="answer" class="form-control h_150" cols="30" rows="10" id="answer" placeholder="Please enter answer">{{ $item->answer }}</textarea>
                                                                @if ($errors->has('answer'))
                                                                    <span class="text-danger">{{ $errors->first('answer') }}</span>
                                                                @endif
                                                            </div>
                                                            <div class="mb-3">
                                                                <button type="submit" class="btn btn-primary">Update</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                          </div>                                          
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection