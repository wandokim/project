<%@page import="sol.desk.wjjst.dto.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%-- <%
	BoardDTO dto = session.getId();	
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bulletinboard.jsp</title>
<!-- 부트스트랩과 제이쿼리 라이브러리를 사용하기 위한 선언 -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
<script	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<!-- summernote의 스타일시트와 자바스크립트을 사용하기 위한 선언 -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<style type="text/css">
#container {
	margin: 0 auto;
	width: 600px;
	height: 420px;
	border: 1px solid #EAEAEA;
	margin-top: 310px;
	/* z-index: 1; */
}

#bottombox {
	margin-bottom: 20px;
	text-align: center;
}

#div1 {
	float: left;
	margin-bottom: 10px;
}

#div2 {
	float: left;
	margin-left: 80px;
	margin-bottom: 10px;
}

#writer, #title, #location, #company {
	margin-left: 20px;
}

#wr, #ti, #lo, #co {
	padding: 10px;
	background: rgba(255, 255, 255, 0.4);
}

p {
	font: 10px "굴림";
	font-weight: bold;
}

#btn {
	border-radius: 10px;
	padding: 10px;
	width: 100px;
}

#txta {
	clear: both;
}
#center {
    position: absolute;
    top: 100px;
    width: 99%;
    height: 200px;
    background-image: url(images/mainbg15.jpg);
    z-index: -1;
}
#topNavi {
    position: fixed;
    width: 100%;
    height: 70px;
    top: -10px;
    background-color: whitesmoke;
    z-index: 200;
}
#upperLeft {
    position: absolute;
    width: 300px;
    height: 40px;
    font-family: fantasy;
    font-size: 30px;
    margin-left: 20px;
    bottom: 5px;
}
#upperRight {
    position: absolute;
    right: 8px;
    width: 700px;
    height: 50px;
    bottom: 0;
}
#upperRight div {
    float: right;
    width: 100px;
    height: 50px;

}

#upperRight div {
    text-align: center;
}

#upperRight div span {
    position: relative;
    top: 12px;
}

#upperRight div.abt span {
    font-size: 16px;
    font-family: cursive;
    color: dimgray;
    right: 20px;

}

#upperRight div.rl span {
    font-size: 20px;
    font-family: fantasy;
    color: blueviolet;
}
#login {
    background-color: cornflowerblue;
    border-radius: 10px;
}

</style>

<script type="text/javascript">
	$(document).ready(function() {
		$('#summernote').summernote({ // summernote를 사용하기 위한 선언
			top : 300,
			width : '100%',
			height : 200,
			callbacks : {
				onImageUpload : function(files, editor, welEditable) {
					sendFile(files[0], this);
				}
			}
		});

		function sendFile(file, editor) {
			// 파일 전송을 위한 폼생성
			data = new FormData();
			data.append("tourLocImg", file);
			$.ajax({ // ajax를 통해 파일 업로드 처리
				data : data,
				type : "POST",
				url : "imgUpload.jsp",
				cache : false,
				contentType : false,
				processData : false,
				success : function(data) { // 처리가 성공할 경우					
					// 에디터에 이미지 출력
					$(editor).summernote('editor.insertImage', "pro_images/"+data.trim());					
					$('input[name="imgSrc"]').val("pro_images/"+data.trim());
				}
			});
		}
		
		$("#btn").click(function(){
			alert("전송되었습니다.");
			$('#write').submit();
		});			
	});

	// 스마트 에디터 화면에 띄우기 위한 부분
</script>

</head>
<body>
	<form action="bulletinboardOk.jsp" id="write">
	<div id="container1">
			<div id="topNavi">
				<a href="main_topbar.jsp">
					<div id="upperLeft"></div>
				</a>
				<div id="upperRight">
					<a href="">
						<div id="login" class="rl">
							<span>LOGIN</span>
						</div>
					</a> <a href="">
						<div class="rl">
							<span>REGISTER</span>
						</div>
					</a> <a href="">
						<div class="abt">
							<span>Tour Diary</span>
						</div>
					</a> <a href="">
						<div class="abt">
							<span>Board</span><img src="" alt="">
						</div>
					</a> <a href="">
						<div class="abt">
							<span>About Us</span>
						</div>
					</a>
				</div>
			</div>
	<div id="center"></div>
	<div id="container">
		<div id="div1">
			<div id="writer">
				<p>WRITER</p>
				<input type="text" name="wr" id="wr" value="<%=%>"/>
			</div>
			<div id="title">
				<p>LOCATION</p>
				<input type="text" name="ti" id="ti" />
			</div>
		</div>
		<div id="div2">
			<div id="location">
				<p>TITLE</p>
				<input type="text" name="lo" id="lo" />
			</div>
			<div id="company">
				<p>COMPANY</p>
				<input type="text" name="co" id="co" />
			</div>
		</div>
		<div id="txta">
			<div>
				<textarea id="summernote" name="ct"></textarea>
			</div>
		</div>
		<input type="hidden" name="imgSrc" value="" />
		<div id="bottombox">
			<div id="button">
				<input type="button" value="SEND" id="btn" onmouseover="this.style.backgroundColor='#FFC19E'" onmouseout="this.style.backgroundColor=''"/>
			</div>
		</div>
	</div>
	</form>
	
</body>
</html>