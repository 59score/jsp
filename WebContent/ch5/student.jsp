<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="user" class="com.sccc.UserBean" />


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>JavaBean</title>
</head>
<body>
<jsp:setProperty  name="user" property="*"  />
<jsp:setProperty  name="user" property="username"  param="username"/>
<jsp:setProperty  name="user" property="username"  value="username"/>

<h1>
<%=user.getUsername() %>
</h1>

<h1>
<jsp:getProperty name="user" property="username" />
</h1>
<h1>
<jsp:getProperty name="user" property="major" />
</h1>

</body>
</html>