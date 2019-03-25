<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- bulletinboardOk.jsp -->

<%
	
	String writer = request.getParameter("wr");
	String title = request.getParameter("ti");
	String write_date = request.getParameter("date");	
	String b_contents = request.getParameter("ct");
	String b_like= request.getParameter("like");
	String b_hits = request.getParameter("hits");
	
	
	//브라우저에 출력
	/* out.println("writer:"+writer);
	out.println("title:"+title);
	out.println("location:"+location);
	out.println("company:"+company+"<hr>");
	out.println("contents:"+contents); */
	
	response.sendRedirect("bulletinboardMain.jsp");



%>