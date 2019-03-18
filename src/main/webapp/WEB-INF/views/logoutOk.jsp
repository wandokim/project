<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	// 세션값 초기화
	session.invalidate();

	// redirect
	response.sendRedirect("main");
%>