<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>变量的方法和申明</title>
</head>
<body>
<%!
	String str = "JSP技术带你当上CEO,迎娶白富美，";
%>
<%!
	String ello = "JSP技术带你当上CEO,迎娶白富美，";
    String print(){
	return str;
}


%>
<%=print()%>

</body>
</html>