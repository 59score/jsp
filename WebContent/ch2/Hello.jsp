<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>This is a first JSP class~</title>
<link rel="stylesheet" type="text/css" href="./hello.css" />
<link rel="stylesheet" type="text/css" href="./dist/css/bootstrap.css" />
<script type="text/javascript" src="./hello.js" ></script>
</head>
<body>

<div>
<p class="first">
<%
	out.println("1+2");
    String bootClassName = "btn-warning";
%>
</p>

<%

	int sum = 0;
	int x = 1;

%>
<% 
	while(x<=10){
		sum+=x;
		x++;
	}
%>


<!-- dsaf-->
<%-- 嘿~你看不到我 --%>

<%/* 这样和这样 */ %>
<%// 你依旧看不到我   %>

<p> 1加到10的结果是：<%=sum %></p>
<p> 现在的时间是：<%=new java.util.Date() %></p>
</div>
</body>
</html>