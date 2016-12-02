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
	<c:set var="salary" scope="session" value="${2000*2}"/>
	<p>salary 变量值: <c:out value="${salary}"/></p>
	<c:remove var="salary"/>
	<p>删除 salary 变量后的值: <c:out value="${salary}"/></p>
	
	<c:set var="salary" scope="session" value="${2000*2}"/>
	<c:if test="${salary > 3000}" >
		<tr>
			<td> 不得了，不得了，欢迎回来CEO。</td>
		</tr>
	</c:if>
	<c:if test="${salary < 3000}" >
		<tr>
			<td> 虽然你现在是普通用户，屌丝，你也有上天的一天。</td>
		</tr>
	</c:if>
	
	<c:choose>
	    <c:when test="${salary <= 0}">
	   		    太惨了。
	    </c:when>
	    <c:when test="${salary > 1000}">
	    	   不错的薪水，还能生活。
	    </c:when>
	    <c:otherwise>
			 什么都没有。
	    </c:otherwise>
	</c:choose>
	
	<a href="<c:url value="/heroes" />">查看所有英雄</a>
	<%
		String hello[] = {"a", "b"};
	%>
	
	<c:forEach items="${hello}" var="zi">
		<p><c:out value="${zi}" /></p>
	</c:forEach>
</body>
</html>