<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎回来</title>
</head>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	String connectSQL = "jdbc:mysql://localhost:3306/software";
	Connection conn=java.sql.DriverManager.getConnection(connectSQL,"root","");
	
	String sql = "select * from student where name = ?";  // 含有参数
	PreparedStatement st = conn.prepareStatement(sql);
	
	String name = request.getParameter("name");
	
	st.setString(1, name);
	ResultSet rs = st.executeQuery();
	
	out.println("<table>");
	while(rs.next())
	{
	  out.println("<tr>");
	  out.println("<h>欢迎回来," + rs.getString("name") + "</h1> ");
	  out.println("<td>"+rs.getInt("id")+"</td>");
	  out.println("<td>"+rs.getInt("age")+"</td>");
	  out.println("<td>"+rs.getString("major")+"</td>");
	  out.println("</tr>");
	}
	out.println("</table>");

	 rs.close();
	 st.close();
	 conn.close();

	
%>

</body>
</html>