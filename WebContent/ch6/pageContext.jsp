<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<%request.setAttribute("name", "JAVA开发从入门到上天"); %>
<%session.setAttribute("name", "开发从入门到颈椎病治疗"); %>
<%application.setAttribute("name", "JSP开发从入门到放弃"); %>

<h1><%=pageContext.getRequest().getAttribute("name")%></h1>
<h1><%=pageContext.getSession().getAttribute("name")%></h1>
<h1><%=pageContext.getServletContext().getAttribute("name")%></h1>
</body>
</html>