<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.Random" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Hello</title>
</head>
<body>
<%
    if(request.getAttribute("info")!=null){
    	out.println(request.getAttribute("info"));
    }

	Integer random = (Integer) request.getAttribute("random");
	
	if(random==null){
		Random randomer = new Random();
		random = randomer.nextInt(100);
	}
%>
<form action="/jsp/Guess" method="post">
	<input type="hidden" value="<%=random %>" name="random" />
	<p><input name="guess"></p>
	<button>提交</button>
</form>
</body>
</html>