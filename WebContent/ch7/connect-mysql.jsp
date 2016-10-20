<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.DriverManager" %>
<html>
<body>
<%

  Class.forName("com.mysql.jdbc.Driver").newInstance();
  String connectSQL = "jdbc:mysql://localhost:3306/software";
  Connection conn=java.sql.DriverManager.getConnection(connectSQL,"root","");
  
  
  Statement stmt=conn.createStatement();
  ResultSet rs=stmt.executeQuery("select * from student");
  
  out.println("<table>");
  while(rs.next())
  {
    out.println("<tr>");
    out.println("<td>"+rs.getInt("id")+"</td>");
    out.println("<td>"+rs.getString("name")+"</td>");
    out.println("<td>"+rs.getInt("age")+"</td>");
    out.println("<td>"+rs.getString("major")+"</td>");
    out.println("</tr>");
  }
  out.println("</table>");
  
  %>
  
  <h1>
  按照年龄来查询
  </h1>
  <%
  String sql = "select * from student where age = ?";  // 含有参数
  PreparedStatement st = conn.prepareStatement(sql);
  st.setInt(1, 20);
  rs = st.executeQuery();
  
  out.println("<table>");
  while(rs.next())
  {
    out.println("<tr>");
    out.println("<td>"+rs.getInt("id")+"</td>");
    out.println("<td>"+rs.getString("name")+"</td>");
    out.println("<td>"+rs.getInt("age")+"</td>");
    out.println("<td>"+rs.getString("major")+"</td>");
    out.println("</tr>");
  }
  out.println("</table>");

  rs.close();
  st.close();
  conn.close();
  %>  
</table>
</body>
</html>
