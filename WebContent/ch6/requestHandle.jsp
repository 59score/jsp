<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<%
	String textContent = request.getParameter("name");
	String buttonName = request.getParameter("submit");
	
	String paramName ;
	String value ;
%>

<h1>
	文本框输入的信息： <%=textContent %>
</h1>
<h1>
	按钮信息： <%=buttonName %>
	
	<%=request.getRemoteHost() %>
</h1>		
</body>
</html>