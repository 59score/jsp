<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="user" class="com.sccc.User"></jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>javaBean的使用</title>
</head>
<body>
<jsp:setProperty property="username"  name="user" value="liang"/>
<jsp:setProperty property="gender" name="user" value="女"/>
<jsp:setProperty property="age"  name="user" value="18"/>

<h1>用户名：<jsp:getProperty property="username" name="user" /></h1>
<h1>年龄：<jsp:getProperty property="age" name="user" /></h1>

<%=request.getParameter("hope") %>
</body>
</html>