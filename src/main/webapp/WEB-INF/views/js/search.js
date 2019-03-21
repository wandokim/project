// dashboard로 search_id 파라미터 값 보내기
function searching(){
	var nic = document.getElementById('search_nic').value;	
	console.log(nic);	
	if(nic == "" || nic == null){
		alert("닉네임을 입력하세요");
	}else{		
		location.href = "dashboard?search_nic="+nic;		
	}	
}

// logo 클릭 시 main 이동 (id=sol_img)
$("#sol_img").click(function(){
	location.href = "main";
});


// 로그인 페이지로 이동
function login(){
	location.href = "login";
}

// 회원가입 페이지로 이동
function register(){
	location.href = "register";
}


