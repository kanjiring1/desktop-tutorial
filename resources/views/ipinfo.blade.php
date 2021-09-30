@extends('layouts.app')
@section('styles')
    <style type="text/css">
        @font-face {
            font-family: codebold;
        }
        .modal-message .modal-dialog {
            width: 1000px;
        }
        .modal-content1 {
            -webkit-border-radius: 0;
            -webkit-background-clip: padding-box;
            -moz-border-radius: 0;
            -moz-background-clip: padding;
            border-radius: 10px;
            background-clip: padding-box;
            -webkit-box-shadow: 0 0 40px rgba(0,0,0,.5);
            -moz-box-shadow: 0 0 40px rgba(0,0,0,.5);
            box-shadow: 0 0 40px rgba(0,0,0,.5);
            color: #000;
            background-color: #fff;
            border: rgba(0,0,0,0);
        }
        .modal-message.modal-info .modal-header {
            color: #fff;
            border-top: 3px solid #57b5e3;
            border-bottom: 3px solid #57b5e3;
            background-color: #3F5061;
            text-align: center!important;
            padding: 5px 0 5px 0;
            position: relative;
            top: 20px;
        }
        .close1 {
            float: right;
            font-size: 18px;
            color: #fff;
            opacity: 1;
            background: 0 0;
            border: 0;
        }

        button.btn.green{
            padding: 10px;
        }

        .modal-title {
            color: #fff;
            font-size: 40px;
            font-weight: 600;
            font-family: "codebold", serif;
        }

        .modal-body {
            padding: 25px 15px 0px 15px;
            position: relative;
            top: 20px;
            bottom:-4px;
        }
        .modal-footer {
            text-align: left;
            position: relative;
            bottom: 5px;
        }
        .col-md-12 .modal {
            padding: 5px 5px;
        }
    </style>
@endsection
@section('content')
    @component('particals.jumbotron')
        <h3>Thông tin địa chỉ IP truy cập</h3>
        <h6></h6>
    @endcomponent

    <div class="container">
        <div class="row" style="display: block">
            <div class="col-md-12">
                <ul class="list-group">
                    @include('dashboard.table')
                </ul>
            </div>
        </div>
    </div>
    <div class="modal fade modal-info modal-message" id="myModal" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="false">
        <div class="modal-dialog modal-lg">
            <div class="modal-content1">
                @include('fields_ipinfo')
            </div>
        </div>
    </div>
@endsection
@section ('scripts')
    <script>
        function show()
        {
            $('#myModal').modal('show');
        }
        function buttonclick()
        {
            $('#modal').click();
        }
    </script>
    <script type='text/javascript'>
        $(document).ready(function(){

            $('.btn-block').click(function(){
                var userid = $(this).data('id');
                // AJAX request
                $.ajax({
                    url: '/ajaxip',
                    type: 'post',
                    data: {userid: userid},
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(response){
                        // Add response in Modal body
                        $('.modal-body').html(response);
                    }
                });
            });
        });
    </script>
@endsection