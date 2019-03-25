<%@page import="sol.desk.wjjst.dto.UserDTO"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("nicname");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	session.invalidate();
	// redirect
	response.sendRedirect("Profile");

%>