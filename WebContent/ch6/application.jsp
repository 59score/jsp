<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset==utf-8">
<title>Insert title here</title>
</head>
<body>
<% application.setAttribute("counter", "1"); %>
<h1>
访问人数:	<%= application.getAttribute("counter") %>
</h1>
<h1>
服务器信息：	<%= application.getServerInfo() %>
</h1>
</body>
</html>