<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.DriverManager" %>
<%  
   request.setCharacterEncoding("UTF-8");  
   response.setCharacterEncoding("UTF-8");  
   response.setContentType("text/html; charset=utf-8");  
%> 
<html>
<body>
<%
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  String connectSQL = "jdbc:mysql://localhost:3306/software";
  Connection conn=java.sql.DriverManager.getConnection(connectSQL,"root","");

  int id = Integer.parseInt(request.getParameter("id"));
  String name = request.getParameter("name");
  int age = Integer.parseInt(request.getParameter("age"));
  String major = request.getParameter("major");

  //生成更新sql
  String sql = "update student set name = ?, age = ?, major=? where id = ?";
  PreparedStatement ps = conn.prepareStatement(sql);
  
  ps.setString(1, name);
  ps.setInt(2, age);
  ps.setString(3, major);
  ps.setInt(4, id);
  
  ps.executeUpdate();
    
  ps.close();
  conn.close();
  %>  
  
  <h1>
  	数据修改成功
  </h1>
</body>
</html>
