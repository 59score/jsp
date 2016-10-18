<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.DriverManager" %>
<%  
   request.setCharacterEncoding("UTF-8");  
   response.setCharacterEncoding("UTF-8");  
   response.setContentType("text/html; charset=utf-8");  
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	String connectSQL = "jdbc:mysql://localhost:3306/software";
	Connection conn=java.sql.DriverManager.getConnection(connectSQL,"root","");
	Statement stmt=conn.createStatement();

	String id = request.getParameter("id");
	String sql = "delete from student where id=" + id;
	stmt.executeUpdate(sql);
	
	stmt.close();
	conn.close();
%>

<h1>
	Ñ§ÉúÐÅÏ¢ÒÑÉ¾³ý¡£
</h1>
</body>
</html>