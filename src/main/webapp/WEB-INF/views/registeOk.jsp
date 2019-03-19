<%@page import="sol.desk.wjjst.dto.UserDTO"%>
<%@page import="sol.desk.wjjst.dto.DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String nic = request.getParameter("nicname");
	String password = request.getParameter("pwd");
	String email = request.getParameter("email");
	int rout = 1;
	
	UserDTO dto = new UserDTO();
	
	dto.setId(id);
	dto.setEmail(email);
	dto.setNicname(nic);
	dto.setRout(rout);
	
	
	
	
%>