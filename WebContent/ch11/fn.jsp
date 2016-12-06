<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:set var="theString" value="I am from runoob"/>

<c:if test="${fn:contains(theString, 'runoob')}">
   <p>找到 runoob<p>
</c:if>

<c:if test="${fn:contains(theString, 'RUNOOB')}">
   <p>找到 RUNOOB<p>
</c:if>

<c:set var="string1" value="This is first String."/>
<c:set var="string2" value="This is second String." />

<p>字符串长度 (1) : ${fn:length(string1)}</p>
<p>字符串长度 (2) : ${fn:length(string2)}</p>

<c:set var="string1" value="This is first String."/>
<c:set var="string2" value="${fn:substring(string1, 5, 15)}" />

<p>生成的子字符串为 : ${string2}</p>

<c:set var="string1" value="This is first String."/>
<c:set var="string2" value="${fn:substringAfter(string1, 'is')}" />

<p>生成的子字符串 : ${string2}</p>

<c:set var="string1" value="I am from google"/>
<c:set var="string2" value="${fn:replace(string1, 
                                'google', 'runoob')}" />

<p>替换后的字符串 : ${string2}</p>

</body>
</html>