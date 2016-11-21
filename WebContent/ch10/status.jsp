<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>突然状况！！！！</title>
</head>
<body>

<jsp:useBean id="status" class="com.sccc.Status" scope="session" />
<h1>这不是演习！！这不是演习！！</h1>
<form action="/jsp/Girl" method="post">

	<%
	 	String info = (String)session.getAttribute("info");
		if(info!=null){
			out.print(info);
		}
	%>
	
	<%
		
		String zhuangTai = (String)request.getAttribute("zhuangTai");//取出问题
		ArrayList<String> xuanXiang = (ArrayList<String>)request.getAttribute("xuanXiang");//根据问题取出选项
		
		out.println("<h1>" + zhuangTai + "应该怎么回答？！！想清楚！</h1>");
		
		//显示出所有选项
		for(int i = 0;i<4;i++){
			String neiRong = xuanXiang.get(i);
			String num = String.valueOf(i);
			out.print("<p><input type='radio' name='phone' value='+"
			 			+ num + "'>" + neiRong + "</input></p>");
		}
		
	%>
	<button>提交</button>
</form>

</body>
</html>