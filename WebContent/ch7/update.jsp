<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.DriverManager" %>
<%  
   request.setCharacterEncoding("utf-8");  
   response.setCharacterEncoding("utf-8");  
   response.setContentType("text/html; charset=utf-8");  
%>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

<h1>
	修改学生信息
</h1>
<form action="updateStudent.jsp" method="post">
	<p>学号 : <input type="text" name="id"  /></p>
	<p>姓名 : <input type="text" name="name"  /></p>
	<p>年龄 : <input type="text" name="age"/></p>
	<p>专业 : <input type="text" name="major" /></p>
	<button type="submit">提交</button>
</form>


</body>
</html>