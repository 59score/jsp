<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Hello</title>
<jsp:useBean id="DBConnection" class="com.sccc.ch9.DBConnectionManager" />
</head>
<body>

<%

  Connection conn = DBConnection.getConnection();
  
  Statement stmt=conn.createStatement();
  ResultSet rs=stmt.executeQuery("select * from student");
  
  out.println("<table>");
  while(rs.next())
  {
    out.println("<tr>");
    out.println("<td> <a href='update.jsp?id="+rs.getInt("id")+ "'>学号</a>" + "</td>");
    out.println("<td>"+rs.getString("name")+"</td>");
    out.println("<td>"+rs.getInt("age")+"</td>");
    out.println("<td>"+rs.getString("major")+"</td>");
    out.println("</tr>");
  }
  out.println("</table>");
  
  %>

</body>
</html>