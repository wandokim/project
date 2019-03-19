<%@page import="java.util.Arrays"%>
<%@page import="java.io.Console"%>
<%@page import="sol.desk.wjjst.ChallengerINFO"%>
<%@page import="java.util.HashMap"%>
<%@page import="sol.desk.wjjst.SplitKey"%>
<%@page import="sol.desk.wjjst.FindID"%>
<%@page import="sol.desk.wjjst.SplitStr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//request.setCharacterEncoding("UTF-8");
		
		String tier ="CHALLENGER";
		String leaguePoints = "";
		String summonerName = "";
		String wins ="";
		String losses ="";
		
		SplitStr str = new SplitStr();		
		SplitKey b = new SplitKey();
		
		ChallengerINFO c = new ChallengerINFO();
		
		
		// 챌린저 정보
		String[] cham = str.split(c.challengerinfo());	
		
		
		for(int i=0; i<cham.length; i++){
			summonerName = cham[5+(10*i)];
			leaguePoints = cham[(5+(10*i))+1];
			wins = cham[(5+(10*i))+3];
			losses = cham[(5+(10*i))+4];
		}
			
		
	%>
	<script type="text/javascript">
		
	</script>
	
</body>
</html>