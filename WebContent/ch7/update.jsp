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
<%

    String id = request.getParameter("id");
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	String connectSQL = "jdbc:mysql://localhost:3306/software";
	Connection conn=java.sql.DriverManager.getConnection(connectSQL,"root","");
	
	  Statement stmt=conn.createStatement();
	  ResultSet rs=stmt.executeQuery("select * from student where id = " + id);
	  
	  String name = "";
	  int age = 0;
	  String major = "";
	  
	  while(rs.next()){
		  name = rs.getString("name");
		  age = rs.getInt("age");
		  major = rs.getString("major");
	  }

	  
%>
<body>

<h1>
	修改学生信息
</h1>
<form action="updateStudent.jsp" method="post">
	<p>学号 : <input type="text" name="id"  value="<%=id %>"  disable="true"/></p>
	<p>姓名 : <input type="text" name="name" value="<%=name %>" /></p>
	<p>年龄 : <input type="text" name="age" value="<%=age %>" /></p>
	<p>专业 : <input type="text" name="major" value="<%=major %>" /></p>
	<button type="submit">提交</button>
</form>


</body>
</html>