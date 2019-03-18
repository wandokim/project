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
		
		String championId ="값없음";
		String championLevel="값없음";
		String championPoints="값없음";
		
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
				
				//User_AllChampINFO
				String[] user_acinfo = str.split(user_allchampinfo);
				HashMap<String,String> hm3 = b.key(user_acinfo);
				
				championId = hm3.get("championId");
				championLevel = hm3.get("championLevel");
				championPoints = hm3.get("championPoints");
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

<script type="text/javascript">
	console.log("닉네임 = <%=nic %>");
	console.log("아이콘 아이디 = <%=icon_id %>");
	console.log("id = <%=id %>");
	console.log("레벨 = <%=level %>");
	console.log("티어 = <%=tier %>");
	console.log("리그포인트 = <%=leaguePoints %>");
	console.log("승 = <%=wins %>");
	console.log("패 = <%=losses %>");
	console.log("rank = <%=rank %>");
	
	console.log("-----------");
	console.log("챔피언 = <%=championId %>");
	console.log("챔피언 레벨 = <%=championLevel %>");
	console.log("챔피언포인트 = <%=championPoints %>");
	console.log("./img/emblems/<%=tier %>.png");
</script>

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
            <h1 class="h3 mb-0 text-gray-800">소환사 정보</h1>
          </div>

          <!-- Content Row -->
        <div class="row">
          	<div id="card-body">
          		<span><img src="./img/profileicon/<%=icon_id %>.png" style="background-image: url(./img/profileicon/0.png)" width="100" height="100"/></span>
          		<div id="level_font">레벨<%=level %></div>
          	</div>
         
          	<div id="info1">
          		<span id="nic_font"><%=nic %></span>
          		<input type="button" value="전적 갱신" />
          	</div>
        </div>
        <br />
        <div class="row"> 	
          	<div id="info2">
          		<%
          			int win = Integer.parseInt(wins);
          			int lose = Integer.parseInt(losses);
          			int t1 = win*100;
          			int t2 = win+lose;
          			long total = t1/t2;
          			
          		%>
          		<img src="./img/emblems1/<%=tier %>.png" alt="error" width="100" height="100"/>
          	</div>
          	<div id="info2">
          		<span>솔로랭크</span>
          		<div id="tier_font"><%=tier %></div>
          		<div id="leaguepoint_font"><%=leaguePoints %> LP</div>
          		<span><%=wins %>승</span>
          		<span><%=losses %>패</span>
          		<span>승률 : <%=total %>% </span>
          	</div>
         </div> 
         
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; <span style="font-weight: bold;">SOL.GG 2019</span>. Search Your Champion.</span>
          </div>
        </div>
      </footer>
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
  
  <!-- search js -->
  <script src="js/search.js"></script>

</body>
</html>