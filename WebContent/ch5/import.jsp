<%@ page language="java" 
    pageEncoding="utf-8"
%>

<!-- 可以写成这样 -->
<%@page import="java.util.Date"%>
<%@page import="java.io.*"%>

<!-- 也可以写成这样 -->
<%@page import="java.util.Date, java.io.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP课程</title>
</head>
<body>
<% Date date = new Date();%>
	现在的时间是：<%=date%>
</body>
</html>