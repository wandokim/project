<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<!-- 커스텀 css-->
<link href="css/custom.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Modify.jsp</title>
<style type="text/css">
  #checkPwd{
  	color : red;
  	font-size: 12px;
  	padding-left: 50px;
  }
  .col-lg-4{
  	margin: 0 auto;
  	top: 80px;
  }
  
</style>
  
<script type="text/javascript">
  	var checkFirst = false;
  	var lastKeyword = '';
  	var loopSendKeyword = false;
  	
  	function checkPwd(){
  		var f1 = document.forms[0];
  		var pw1 = f1.pwd.value;
  		var pw2 = f1.pwd_check.value;
  		if(pw1!=pw2){
  			document.getElementById('checkPwd').style.color = "red";
  			document.getElementById('checkPwd').innerHTML = "동일한 암호를 입력하세요";
  		}else{
  		document.getElementById('checkPwd').style.color = "black";
  		document.getElementById('checkPwd').innerHTML = "암호가 확인 되었습니다.";
  	
  		}
  	}  
</script>

<script type="text/javascript">	
	$(function(){
		//닉네임 중복체크
		    $('#nicname').blur(function(){
		        $.ajax({
			     type:"POST",
			     url:"ModifyNic",
			     data:{
			            "nicname":$('#nicname').val()
			     },
			     success:function(data){	
			            if($.trim(data)=="YES"){
			               if($('#nicname').val()!=''){ 
			               	//alert("사용가능한 닉네임입니다.");
			               	document.getElementById('checkNic').style.color = "blue";
				  			document.getElementById('checkNic').innerHTML = "사용 가능한 닉네임입니다.";	
			               	
			               }
			           	}else{
			               if($('#nicname').val()!=''){
			                  //alert("중복된 닉네임입니다.");
			                  document.getElementById('checkNic').style.color = "red";
					  		  document.getElementById('checkNic').innerHTML = "중복된 닉네임입니다.";
			                  $('#nicname').val('');
			                  $('#nicname').focus();
			               }
			            }
			         }
			    }) 
		     })
		}); 
	
</script>
<script type="text/javascript">	
$(function(){		
	$("#Modify").click(function(){
		
		var getCheck= /[0-9]|[a-z]|[A-Z]|[가-힣]/;
	    var getName= /^[\w\Wㄱ-ㅎㅏ-ㅣ가-힣]{2,6}$/;
	    var getPw= /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;

	      if($("#nicname").val() == ""){
		        alert("닉네임을 입력해주세요.");
		        $("#nicname").focus();
		        return false;
		      }
	 	     
	      if($("#email").val() == ""){
		        alert("이메일을 입력해주세요.");
		        $("#email").focus();
		        return false;
		      }
	      
	    //닉네임 유효성	      
	      if($("#pwd").val() == ""){
		        alert("비밀번호를 입력해주세요.");
		        $("#pwd").focus();
		        return false;
		      }
	      
	      if(!getPw.test($("#pwd").val())){
	    	  alert("숫자, 영문자, 특수문자 조합으로 10~15자리를 입력해주세요.");
	    	  $("#pwd").val("");
		      $("#pwd").focus();
		      return false;
	      }
	});
});	    
</script>

</head>
<body>
<div class="row">
<div class="col-lg-4">
			
				<div class="p-5" style="text-align: center;">
	            	<div style="background-color: white;border-radius: 20px; padding: 15px; opacity: 0.95">
	              <div class="text-center">
	                <h1 class="h4 text-gray-900 mb-4">Modify an Account!</h1>
	              </div>
	              <form class="user" name="frm" action="ModifyOk">
	                <div class="form-group row" >	                
	                 <div class="col-sm-12">                
	                    닉네임 변경 <input class="form-control form-control-user" name="nicname" placeholder="닉네임" id="nicname" >  
	                    <div id="checkNic" style="padding: 10px 0 0 0"></div>         
	                 </div>	                 	               	       
	                </div>
	                <div class="form-group">
	                    이메일 변경<input class="form-control form-control-user" name="email" placeholder="이메일" id="email" >
	                </div>
	                <div class="form-group row">
	                
	                <!-- pwd -->
	                  <div class="col-sm-12">
	                    비밀번호 변경<input type="password" class="form-control form-control-user" name="pwd" placeholder="Password" id="pwd">
	                  </div>
	                  </div>
	                  <div class="form-group row">
	                   <div class="col-sm-12">
	                    비밀번호 변경확인<input type="password" class="form-control form-control-user" name="pwd_check" placeholder="Repeat Password" onkeyup="checkPwd()" onkeyup="checkPwd()">
	                   <div id="checkPwd"></div>
	                  </div>
	                </div>
	                <!-- pwd -->	                
	                <a href="ModifyOk?nicname=nicname&email=email&pwd=pwd"><input type="submit" class="btn btn-primary btn-user btn-block" value="Register Account" id="Modify"></a>
	                <hr>
	              </form>
	              
	              <div class="text-center">
	                <a class="small" href="forgot-password.html">Forgot Password?</a>
	              </div>
	              <div class="text-center">
	                <a class="small" href="login.html">Already have an account? Login!</a>
	              </div>
	            </div>
	          </div>
			</div>			
			</div>
			<div style="height: 200px"></div>
		<jsp:include page="footer.jsp" flush="true"/>
</body>
</html>