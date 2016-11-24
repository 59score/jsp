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
  Statement stmt=conn.createStatement();

  String id = request.getParameter("id");
  String name = request.getParameter("name");
  String age = request.getParameter("age");
  String major = request.getParameter("major");


   //执行插入程序
  String sql = "insert into student values (" + id + ",' " 
  			+ name + "','" + age + "','" + major + "')";
  stmt.executeUpdate(sql);

  //查找刚才的插入
  PreparedStatement ps = conn.prepareStatement("select * from student where id = ?");
  ps.setInt(1, Integer.parseInt(id));
  ResultSet results = ps.executeQuery();
  
  
  //显示刚才的插入
  out.println("<table>");
  while(results.next())
  {
    out.println("<tr>");
    out.println("<td>"+results.getInt("id")+"</td>");
    out.println("<td>"+results.getString("name")+"</td>");
    out.println("<td>"+results.getInt("age")+"</td>");
    out.println("<td>"+results.getString("major")+"</td>");
    out.println("</tr>");
  }
  out.println("</table>");
  
  stmt.close();
  conn.close();
  %>  
  
  <h1>
  	数据插入成功
  </h1>
</body>
</html>
