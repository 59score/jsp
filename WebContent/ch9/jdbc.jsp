<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <link href="../dist/css/bootstrap.min.css" rel="stylesheet">
 <link href="../dist/css/hello.css" rel="stylesheet">
<title>Hello</title>
<jsp:useBean id="DBConnection" class="com.sccc.ch9.DBConnectionManager" />
</head>
<body>

<div class="jdbc-table">
	<table class="table table-bordered table-striped">
	<tr class="success">
		<th>学号</th>
		<th>姓名</th>
		<th>年龄</th>
		<th>专业</th>
	<tr>
	<%
	  Connection conn = DBConnection.getConnection();
	  
	  Statement stmt=conn.createStatement();
	  ResultSet rs=stmt.executeQuery("select * from student");
	  int i = 0;
	  String tdStyle = "info";
	  
	  while(rs.next())
	  {
		if(i%2==0){
			tdStyle = "";
		}else{
			tdStyle = "info";
		}
		
	    out.println("<tr class='" + tdStyle + "'>");
	    out.println("<td> " + rs.getInt("id") + "</td>");
	    out.println("<td>"+rs.getString("name")+"</td>");
	    out.println("<td>"+rs.getInt("age")+"</td>");
	    out.println("<td>"+rs.getString("major")+"</td>");
	    out.println("</tr>");
	    
	    i++;
	  }
	  
	  %>
	</table>
</div>

</body>
</html>