<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
 <%! 
 	final String jspURL = "page.jsp"; 
 %>
 <%
	 // 定义如下分页变量
	 // 1、定义每页要显示的记录数
	 int lineSize = 3 ;
	 // 2、定义一个当前是第几页
	 int currentPage = 1 ;
	 //接受传过来的当前页
 %>
 <%
	 try{
	  currentPage = Integer.parseInt(request.getParameter("cp"));
	 }catch(Exception e){
	  e.printStackTrace();
	 }
 %>
 <%
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
	 String connectSQL = "jdbc:mysql://localhost:3306/software";
	 Connection conn=java.sql.DriverManager.getConnection(connectSQL,"root","");
 %>
 <script language="javascript">
	 function openPage(curpage){
	  document.form1.cp.value=curpage;
	  document.form1.submit();
 }
 </script>
 <form action="<%=jspURL%>" method="post" name="form1">
 <input name="button1" type="button" value="首页" onClick="openPage(1)">
 <input name="button2" type="button" value="上一页" onClick="openPage(<%=currentPage-1%>)">
 <input name="button3" type="button" value="下一页" onClick="openPage(<%=currentPage+1%>)">
 <input name="button4" type="button" value="尾页">
 <input name="cp" type="hidden" value="" />
 </form>
 <table width="80%" border="1">
 <tr>
	 <td align="center">编号</td>
	 <td align="center">姓名</td>
	 <td align="center">年龄</td>
	 <td align="center">专业</td>
 </tr>
 <%
	 try{
		 String strSql = "select * from student";
		 Statement stmt = conn.createStatement();
		 ResultSet rs = stmt.executeQuery(strSql);

		 for(int x=0; x<(currentPage-1)*lineSize; x++){
		  	rs.next();
		 }
	 
		 for(int x=0; x<lineSize; x++){
			  if(rs.next()){
				  out.println("<tr>");
				    out.println("<td>"+rs.getInt("id")+"</td>");
				    out.println("<td>"+rs.getString("name")+"</td>");
				    out.println("<td>"+rs.getInt("age")+"</td>");
				    out.println("<td>"+rs.getString("major")+"</td>");
				    out.println("</tr>");
			  }
	 	}
		 
		 stmt.close();
		 rs.close();
		 
	}catch(Exception e){
 %>
 <h4>系统有错误</h4>
 <%
	 e.printStackTrace();
 }finally{
	 conn.close();
 }
 %>
</body>
</html>