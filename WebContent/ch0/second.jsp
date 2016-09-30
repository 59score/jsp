<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="" scope="session"/ >
哎哟 怎么还不下课~
<h1>
我刚才输入的名字是<%=request.getParameter("name") %>
</h1>
<h1>
我刚才输入的专业是<%=request.getParameter("major") %>
</h1>
<h1>
我刚才输入的年龄是<%=request.getParameter("age") %>
</h1>

<%session.setAttribute("name",request.getParameter("name")); %>
<a href="third.jsp">转向第三个页面。</a>

</body>
</html>