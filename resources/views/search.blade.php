@extends('layouts.app')

@section('content')
    @component('particals.jumbotron')
        <h4>{{ request()->get('q') }}</h4>

        <h6>Bạn muốn tìm kiếm gì ?.</h6>
    @endcomponent

    @include('widgets.article')

@endsection