<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
String strNum=(String)application.getAttribute("count");
int count=0;
if(strNum!=null)
	count=Integer.parseInt(strNum)+1;
application.setAttribute("count",String.valueOf(count));

%>

<h1>
你是第<%=application.getAttribute("count") %>位访问者
</h1>
</body>
</html>