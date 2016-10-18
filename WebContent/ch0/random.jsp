<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title></head>
<body>

<% int random = (int)(Math.random()*100) % 37; %>

<h1>
中奖的同学是:<%=random %>号
</h1>
</body>
</html>