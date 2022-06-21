@extends('adminlte::page')

@section('title', 'addcategory')

@section('content')
<div class="box">
  <div class="box-header with-border">
    <h3 class="box-title">add new categories</h3>
    <div class="box-tools pull-right">
      <!-- Buttons, labels, and many other things can be placed here! -->
      <!-- Here is a label for example -->
     <a class="btn btn-primary" href="{{route('categories.index')}}">view all categories</a>
    </div>
    <!-- /.box-tools -->
  </div>
  <!-- /.box-header -->
  @include('partial.alerts')
  <div class="box-body">
        <form action="{{route('categories.store')}}" method="post">
        {{csrf_field()}}
        <div class="form-group">
            <input type="text" name="name" id="name" class="form-control" placeholder="enter category name">
        </div>
        <div class="form-group">
            <input type="submit" name="add" value="add category" class="btn btn-primary btn-block"></button>
        </div>
  </div>
  <!-- /.box-body -->
  <!-- box-footer -->
</div>
<!-- /.box -->
@stop
