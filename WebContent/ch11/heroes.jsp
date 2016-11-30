<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.sccc.ch11.Hero"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="http://localhost:8080/jsp/dist/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<table class="table table-bordered table-striped">
	<tr class="success">
		<th>名字</th>
		<th>昵称</th>
	<tr>
<% 
	ArrayList<Hero> heroes = (ArrayList<Hero>) request.getAttribute("heroes");
	for(Hero hero:heroes){
%>
		<tr>
			<td>
				<a href="http://localhost:8080/jsp/hero?id=<%=hero.getId()%>"> 
				<%=hero.getName()%>
				</a>
			</td>
			<td><%=hero.getNickName() %></td>
		</tr>

<%
	}
%>
</table>

<c:if test="${i == 1}" >
	<tr>
		<td> 不得了，不得了，欢迎回来CEO。</td>
	</tr>
</c:if>
<c:if test="${i != 1}" >
	<tr>
		<td> 虽然你现在是普通用户，屌丝，你也有上天的一天。</td>
	</tr>
</c:if>

<c:forEach items="heroes" var="hero">
   <c:out value="${hero.name}"/><p>
</c:forEach>

</div>                                      -
</body>
</html>