<%@page import="java.util.Comparator"%>
<%@page import="sol.desk.wjjst.RankVO"%>
<%@page import="java.util.Collections"%>
<%@page import="sol.desk.wjjst.MasterInfo"%>
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
<title>RankInfo</title>

<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>

<!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <jsp:include page="sidebar.jsp" flush="true"/>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <jsp:include page="topbar.jsp" flush="true" />
        
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">전체 랭킹 정보</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center;">
                  <thead>
                    <tr>
                      <th width="10%">순위</th>
                      <th>소환사명</th>
                      <th>티어</th>
                      <th>LP</th>
                      <th>승 / 패</th>
                      <th>승률 (%)</th>
                    </tr>
                  </thead>
                  <tbody>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String tier ="CHALLENGER";
		String leaguePoints = "";
		String summonerName = "";
		String wins ="";
		String losses ="";
		
		MasterInfo c = new MasterInfo();
		System.out.println(c.masterinfo());		
		SplitStr str = new SplitStr();	
		
		List<String> result = new ArrayList<String>();
		
		String[] cham = str.split(c.masterinfo());
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
		
		String[] r_result = result.toArray(new String[result.size()]);
		List kim = new ArrayList();		
		for(int i =0; i<=1199; i++) {			
			String wan= r_result[i].substring(r_result[i].indexOf(":")+1,r_result[i].length());
			kim.add(wan);
		}
				
		String[] r_result1 = (String[]) kim.toArray(new String[kim.size()]);	
		
		List list = new ArrayList();

		for(int i=0; i<300; i++) {
			String a1 = r_result1[0+(4*i)]+",";
			String b1 = r_result1[1+(4*i)]+",";
			String c1 = r_result1[2+(4*i)]+",";
			String d1 = r_result1[3+(4*i)];	
			
			String x = a1+b1+c1+d1;
			list.add(x);
		}

		String[] wando = (String[]) list.toArray(new String[list.size()]);

		String[] str1;
		List<RankVO> result1 = new ArrayList();
		RankVO vo;
		for(int i=0; i<wando.length; i++) {
			str1 = wando[i].split(",");
			vo = new RankVO(str1[0],Integer.parseInt(str1[1]),Integer.parseInt(str1[2]),Integer.parseInt(str1[3]));
			
			result1.add(vo);
		}
			
			Collections.sort(result1, new Comparator<RankVO>(){
				public int compare(RankVO vo1, RankVO vo2){
					int vo1Value = vo1.getLp();
					int vo2Value = vo2.getLp();
					
					if(vo1Value > vo2Value){
						return -1;
					}else if(vo1Value < vo2Value){
						return 1;
					}else {
						return 0;
					}
				}
			});
			int rankNo = 1;
			for(RankVO vo_list : result1){
				int total = vo_list.getWin()*100/(vo_list.getWin()+vo_list.getLose());
	%>
			<tr>
                <td><%=rankNo %></td>
                <td><%=vo_list.getName() %></td>
                <td>Master</td>
                <td><%=vo_list.getLp() %></td>
                <td><%=vo_list.getWin() %>승 / <%=vo_list.getLose() %>패</td>
                <td><%=total %>%</td>
            </tr>
	<%
			rankNo++;
			}
	%>
	</tbody>
                </table>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <jsp:include page="footer.jsp" flush="true" />

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
	<jsp:include page="logout_model.jsp" flush="true"/>
	
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script> 	
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>
	
</body>
</html>