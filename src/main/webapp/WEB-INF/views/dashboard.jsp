<%@page import="java.util.ArrayList"%>
<%@page import="sol.desk.wjjst.User_AllChampINFO"%>
<%@page import="sol.desk.wjjst.SplitKey"%>
<%@page import="java.util.HashMap"%>
<%@page import="sol.desk.wjjst.SplitStr"%>
<%@page import="sol.desk.wjjst.Rankinfo"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="sol.desk.wjjst.FindID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SOL.GG - Dashboard</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
	<%
		request.setCharacterEncoding("UTF-8");
		String nic = request.getParameter("search_nic");	
		
		String id = "id 값 없음";
		String level = "level 값 없음";
		String tier = "tier 값 없음";
		String leaguePoints = "leaguePoints 값 없음";
		String wins = "wins 값 없음";
		String losses = "losses 값 없음";
		String icon_id = "icon_id 값 없음";
		String rank = "rank 값 없음";		
		int total =0;
		
		String champ1_id="값없음";
		String champ1_level="값없음";
		String champ1_point="값없음";
		String champ2_id="값없음";
		String champ2_level="값없음";
		String champ2_point="값없음";
		String champ3_id="값없음";
		String champ3_level="값없음";
		String champ3_point="값없음";
		
		if(nic != "" || nic != null){
			
			SplitStr str = new SplitStr();
			FindID fid = new FindID();
			SplitKey b = new SplitKey();
			
			// find_id
			HashMap<String, String> hm = b.key(str.split(fid.find_id(nic)));
			
			id = hm.get("id");
			icon_id = hm.get("profileIconId");
			level = hm.get("summonerLevel");
			
			Rankinfo rinfo = new Rankinfo();
			User_AllChampINFO cinfo = new User_AllChampINFO();
			
			// Rankinfo
			String rank_lolApiJson = rinfo.contents(id);
			// User_AllChampINFO
			String user_allchampinfo = cinfo.user_allchampinfo(id);
			
			
			
			// 랭크전 기록 boolean
			if(rank_lolApiJson=="" || rank_lolApiJson==null || rank_lolApiJson.equals("[]")){
				tier = "UNRANKED";
	%>
				<script type="text/javascript">
					alert("해당 유저는 랭크 기록이 없습니다.");
				</script>
	<%
				
			}else{
				//Rankinfo
				String[] rank_info = str.split(rank_lolApiJson);
				HashMap<String, String> hm2 = b.key(rank_info);
				
				tier = hm2.get("tier");
				leaguePoints = hm2.get("leaguePoints");
				wins = hm2.get("wins");
				losses = hm2.get("losses");
				rank = hm2.get("rank");			
				total = (Integer.parseInt(wins)*100)/(Integer.parseInt(wins)+Integer.parseInt(losses));
				
				//User_AllChampINFO
				String[] wan = str.split(user_allchampinfo);				
				List list = new ArrayList();
				list.add(wan[0]);
				list.add(wan[1]);
				list.add(wan[2]);
				list.add(wan[9]);
				list.add(wan[10]);
				list.add(wan[11]);
				list.add(wan[18]);
				list.add(wan[19]);
				list.add(wan[20]);
				
				list.add(wan[27]);
				list.add(wan[29]);
				list.add(wan[36]);
				list.add(wan[37]);
				list.add(wan[45]);
				list.add(wan[46]);
				
				
				System.out.print(wan[28]);
				
				String[] result = (String[]) list.toArray(new String[list.size()]);		
				
				champ1_id = result[0].substring(result[0].indexOf(":")+1, result[0].length());
				champ1_level = result[1].substring(result[1].indexOf(":")+1, result[1].length());
				champ1_point = result[2].substring(result[2].indexOf(":")+1, result[2].length());
				
				champ2_id = result[3].substring(result[3].indexOf(":")+1, result[3].length());
				champ2_level = result[4].substring(result[4].indexOf(":")+1, result[4].length());
				champ2_point = result[5].substring(result[5].indexOf(":")+1, result[5].length());
				
				champ3_id = result[6].substring(result[6].indexOf(":")+1, result[6].length());
				champ3_level = result[7].substring(result[7].indexOf(":")+1, result[7].length());
				champ3_point = result[8].substring(result[8].indexOf(":")+1, result[8].length());				
			}
		}else{
			
	%>
			<script type="text/javascript">
				alert("닉네임을 감지 하지 못했습니다");
				location.href = "main";
			</script>
	<%
		}
	%>
</head>
<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <jsp:include page="sidebar.jsp" flush="true"/>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <jsp:include page="topbar.jsp" flush="true"/>
        <!-- End of Topbar -->	
        
        <!-- Begin Page Content -->
        <div class="container-fluid">
          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800"> </h1>
          </div>

          
          <!-- DIV1 -->
        <div class="row" style="background-color: black;">
        	<div class="col-lg-8" style="margin: auto;">
        		<div class="card shadow mb-4">
        			<div class="card-header py-3">
        				<p style="margin: 0; text-align: center;">소환사 정보</p>
        			</div>
        			<div class="card-body" style="text-align: center;">
        				
        					<img src="./img/profileicon/<%=icon_id %>.png" style="margin-bottom:40px; background-image: url(./img/profileicon/0.png)" width="100" height="100"/>
        				
        				<div style="display: inline-block;">
		          			<div class="username" style="margin: 4px; text-align: center;"><span style="font-size: 40px; font-weight: bold;font-family: dotum;color: #333333;"><%=nic %></span></div>
		          			<div style="margin:4px; text-align: center; font-size: 25px; font-style: italic; font-weight: bold;">레벨<%=level %></div>
	          			</div>
        			</div>
        		</div>
        	</div>
        </div>
        
		<!-- DIV2 -->
        <div class="row" style="background-color: yellow;">
        	<div class="col-lg-4" style="margin: auto;">
        		<div class="card shadow mb-4">
        			<div class="card-header py-3">
        				<p style="margin: 0; text-align: center;">랭크 정보</p>
        			</div>
        			<div class="card-body" style="text-align: center; ">
        				<img src="./img/emblems1/<%=tier %>.png" alt="error" width="120" height="120"/>
        				<div style="display: inline-block;">
	        				<span>솔로랭크</span>
			          		<div id="tier_font"><%=tier %></div>
			          		<div id="leaguepoint_font"><%=leaguePoints %> LP</div>
			          		<span><%=wins %>승</span>
			          		<input type="hidden" value="<%=wins %>" id="winCount"/>
			          		<span><%=losses %>패</span>
			          		<input type="hidden" value="<%=losses %>" id="loseCount"/>
			          		<div>승률 : <%=total %>% </div>
        				</div>
        			</div>
        		</div>
        	</div>
        	<div class="col-lg-4" style="margin: auto;">
        		<div class="card shadow mb-4">
        			<div class="card-header py-3">
        				<p style="margin: 0;">승률</p>
        			</div>
        			<div class="card-body">
        				<div class="chart-pie pt-4">
                    		<canvas id="myPieChart"></canvas>
                  		</div>
        			</div>
        		</div>
        	</div>
         </div>
         
         
         <!-- DIV3 -->
         <div class="row" style="background-color: blue;">
         	<div class="col-lg-8" style="margin: auto;">
        		<div class="card shadow mb-4" >
        			<div class="card-header py-3">
        				<p style="margin: 0; text-align: center;">챔프 숙련도 순위</p>
        			</div>
        			<div class="card-body" style="text-align: center;">
        				<img src="./img/champion_number/<%=champ1_id %>.png" alt="" />
        				<div style="display: inline-block;">
        					<div > [1위] 이름</div>
				         	<div >Level : <%=champ1_level %></div>
				         	<div>Point : <%=champ1_point %></div>
        				</div>
			         	
			         	<img src="./img/champion_number/<%=champ2_id %>.png" alt="" />
			         	<div style="display: inline-block;">
			         		<div> [2위] 이름</div>
				         	<div>Level : <%=champ2_level %></div>
				         	<div>Point : <%=champ2_point %></div>
			         	</div>
			         	
			         	<img src="./img/champion_number/<%=champ3_id %>.png" alt="" />
			         	<div style="display: inline-block;">
			         		<div> [3위] 이름</div>
			         		<div>Level : <%=champ3_level %></div>
				         	<div>Point : <%=champ3_point %></div>
			         	</div>
			         	
        			</div>
        		</div>
        	</div>
         </div>
         
         <!-- DIV4 -->
         <div class="row" style="background-color: black;">
         	<div class="col-lg-8" style="margin: auto;">
        		<div class="card shadow mb-4">
        			<div class="card-header py-3">
        				<p style="margin: 0; text-align: center;">챔프 숙련도 그래프</p>
        			</div>
        			<div class="card-body">
        				<div class="chart-bar"><div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                    		<canvas id="myBarChart" width="453" height="320" class="chartjs-render-monitor" style="display: block; width: 453px; height: 320px;"></canvas>
                  		</div>
        			</div>
        		</div>
        	</div>
         </div>
         
         
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

         <!-- DIV예시 -->
        <!--  <div class="row" style="background-color: green;">
        	<div class="col-lg-6">
        		<div class="card shadow mb-4">
        			<div class="card-header py-3">
        				<p>박스 머리부분</p>
        			</div>
        			<div class="card-body">
        				<p>몸통 부분</p>
        			</div>
        		</div>
        	</div>
        	<div class="col-lg-6">
        		<div class="card shadow mb-4">
        			<div class="card-header py-3">
        				<p>머리</p>
        			</div>
        			<div class="card-body">
        				<p>몸통</p>
        			</div>
        		</div>
        	</div>
         </div> -->
         
      <!-- Footer -->
		<jsp:include page="footer.jsp" flush="true"/>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button -->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>
  
   <!-- Page level plugins -->
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo2.js"></script>
  <script src="js/demo/chart-bar-demo.js"></script>
  <!-- search js -->
  <script src="js/search.js"></script>

</body>
</html>