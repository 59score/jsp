<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"
    errorPage="./error.jsp"%>
    
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>session</title>
</head>
<body>
	虽然不知道这个是什么，但是很厉害的样子。
	<%=session.getId() %>
	<%
	    String name = "liang";
		session.setAttribute("anotherusername",name);
		int a = 0/0;
	%>
	</br>
	<h1>
	欢迎回来:
	<%=session.getAttribute("anotherusername").toString()%>
	</h1>
</body>
</html>