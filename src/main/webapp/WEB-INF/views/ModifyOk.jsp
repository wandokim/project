<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("nicname");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	// 로그인 DAO
	
	// 세션에 담기 - 임시
	//session.setAttribute("id", "완도킴");
	
	// redirect
	response.sendRedirect("ModifyOk");

%>