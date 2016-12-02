<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<fmt:setLocale value="en"/>
<fmt:bundle basename="com.sccc.ch11.Example">
   <fmt:message key="count.one"/><br/>
   <fmt:message key="count.two"/><br/>
   <fmt:message key="count.three"/><br/>
</fmt:bundle>

<fmt:setBundle basename="com.sccc.ch11.Example" var="lang"/>

<fmt:message key="count.one" bundle="${lang}"/><br/>
<fmt:message key="count.two" bundle="${lang}"/><br/>
<fmt:message key="count.three" bundle="${lang}"/><br/>


</body>
</html>