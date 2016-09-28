<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>脚本实例</title>
</head>
<body>
<%! int x = 1;%>
<table>
	<% if (x==1){
	%>
	<tr>
		<td> 不得了，不得了，欢迎回来CEO。</td>
	</tr>
	<%
		}else{
	%>
 	<tr>
		<td> 虽然你现在是普通用户，屌丝，你也有上天的一天。</td>
	</tr>
	<% }%>
	
</table>
</body>
</html>