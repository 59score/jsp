<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<html>
<body>
<%

  Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver").newInstance();
  String connectSQL = "jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=data";
  Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sa","123456");
  Statement stmt=conn.createStatement();
  ResultSet rs=stmt.executeQuery("select * from student");
  while(rs.next())
  {
    out.println("<tr>");
    out.println("<td>"+rs.getInt("num")+"</td>");
    out.println("<td>"+rs.getString("name")+"</td>");
    out.println("<td>"+rs.getInt("age")+"</td>");
    out.println("<td>"+rs.getString("fromw")+"</td>");
    out.println("<td>"+rs.getString("school")+"</td>");
    out.println("<td>"+rs.getString("major")+"</td>");
    out.println("<td>"+rs.getInt("score")+"</td>");
    out.println("</tr>");
    out.println("</tr>");
  }
  rs.close();
  stmt.close();
  conn.close();
  
  
  String sql = "select * from goods where min_name = ? and age = ?";  // 含有参数
  PreparedStatement st = conn.prepareStatement(sql);
  st.setString(1, "儿童"); // 参数赋值
  st.setInt(2, 22);
  System.out.println(st.toString()); //com.mysql.jdbc.JDBC4PreparedStatement@d704f0: select * from goods where min_name = '儿童'
  %>  
</table>
</body>
</html>
