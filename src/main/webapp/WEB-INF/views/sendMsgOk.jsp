<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>오케이</h2>
<%
	String nic = request.getParameter("nic");
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
%>

<h2><%=nic %></h2>
<h2><%=title %></h2>
<h2><%=contents %></h2>

</body>
</html>