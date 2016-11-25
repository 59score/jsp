<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.sccc.lol.model.Hero"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../dist/css/bootstrap.min.css" rel="stylesheet">
<title>英雄联盟</title>
</head>
<body>
<div class="container ">

<h1 class="center">添加英雄</h1>
<form action="/jsp/hero" method="post" class="form-horizontal" role="form">

  <div class="form-group">
    <label for="name" class="col-sm-2 control-label">英雄姓名</label>
    <div class="col-sm-10">
      <input name="name" type="text" class="form-control" id="name" placeholder="name">
    </div>
  </div>
 
   <div class="form-group">
    <label for="nickName" class="col-sm-2 control-label">昵称</label>
    <div class="col-sm-10">
      <input name="nickName" type="text" class="form-control" id="nickName" placeholder="nickName">
    </div>
  </div>
  
  <div class="form-group">
    <label for="avatar" class="col-sm-2 control-label">英雄头像</label>
    <div class="col-sm-10">
      <input name="avatar" type="text" class="form-control" id="avatar" placeholder="avatar">
    </div>
  </div>
  
  <div class="form-group">
    <label for="image" class="col-sm-2 control-label">英雄背景</label>
    <div class="col-sm-10">
      <input name="image" type="text" class="form-control" id="image" placeholder="image">
    </div>
  </div>
  
  <div class="form-group">
    <label for="desc" class="col-sm-2 control-label">故事背景</label>
    <div class="col-sm-10">
      <textarea name="desc" class="form-control" rows="3"></textarea>
    </div>
  </div>
 
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-success">保存</button>
    </div>
  </div>
  
</form>

</div>
</body>
</html>