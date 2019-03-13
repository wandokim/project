// dashboard로 search_id 파라미터 값 보내기
function searching(){
	var id = document.getElementById('search_id').value;

	console.log(id);
	location.href = "dashboard?search_id="+id;
}

// enter키 누를 때 searching() 실행
function Enter_Check(){
	if(event.keyCode == 13){
		searching();
	}
}

// 로그인 페이지로 이동
function login(){
	location.href = "login";
}

// 회원가입 페이지로 이동
function register(){
	location.href = "register";
}