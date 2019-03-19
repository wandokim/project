<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
		request.setCharacterEncoding("UTF-8");
		
		String tier ="CHALLENGER";
		String leaguePoints = "";
		String summonerName = "";
		String wins ="";
		String losses ="";
		
		ChallengerINFO c = new ChallengerINFO();
		System.out.println(c.challengerinfo());
		System.out.println("---------------");
		SplitStr str = new SplitStr();	
		
		List<String> result = new ArrayList<String>();
		
		
		
		String[] cham = str.split(c.challengerinfo());
		for(int i=0; i<300; i++){
			summonerName = cham[5+(10*i)];
			leaguePoints = cham[(5+(10*i))+1];
			wins = cham[(5+(10*i))+3];
			losses = cham[(5+(10*i))+4];					
			 
			result.add(summonerName); 
			result.add(leaguePoints);
			result.add(wins);
			result.add(losses);
		}
		
		//System.out.println(result);
		String[] r_result = result.toArray(new String[result.size()]);
		List kim = new ArrayList();		
		for(int i =0; i<=1199; i++) {			
			String wan= r_result[i].substring(r_result[i].indexOf(":")+1,r_result[i].length());
			kim.add(wan);
		}
				
		String[] r_result1 = (String[]) kim.toArray(new String[kim.size()]);	
		for(int i=0; i<100; i++) {
			System.out.println(r_result1[i]);
		}
		
		
		List list = new ArrayList();

		for(int i=0; i<300; i++) {
			String a1 = r_result1[0+(4*i)]+",";
			String b1 = r_result1[1+(4*i)]+",";
			String c1 = r_result1[2+(4*i)]+",";
			String d1 = r_result1[3+(4*i)];	
			
			String x = a1+b1+c1+d1;
			list.add(x);
		}

		System.out.println(list);
		String[] wando = (String[]) list.toArray(new String[list.size()]);
		System.out.println("---------");
		for(int i=0; i<wando.length; i++) {
			System.out.println(wando[i]);
		}
		String[] f;
		for(int i=0; i<wando.length; i++) {
			f = wando[i].split(",");
	%>
		<table>
			<tr>
				<td><%=f[0] %></td>
				<td><%=Integer.parseInt(f[1])%></td>
				<td><%=f[2] %></td>
				<td><%=f[3] %></td>
			</tr>
		</table>
	<%
			
		}
	%>
	
	
</body>
</html>