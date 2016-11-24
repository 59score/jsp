<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>企业信息管理系统</title>
</head>
<body>
	<frameset rows="*" cols="120, *" >
		<jsp:include page="left.jsp" />
		<frameset rows="180,*" cols="*" >
			<jsp:include page="top.jsp" />
			<jsp:include page="bottom.jsp" />
			<!-- 
			
			 <frame src="./top.jsp" name="main" scrolling="no" />
			<frame src="./bottom.jsp" name="main" />
			 -->
		</frameset>
	</frameset>
</body>
</html>