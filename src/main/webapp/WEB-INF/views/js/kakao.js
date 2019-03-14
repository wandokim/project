$(document).ready(function(){  
	Kakao.init("9f67eda204cf901f642f04194cebb46d");
 
 /* profile 보기 */
function getKakaotalkUserProfile(){
	Kakao.API.request({
		url: '/v1/user/me',
		success: function(res) {
			$("#kakao-profile").append(res.properties.nickname);
			$("#kakao-profile").append($("<img/>",{"src":res.properties.profile_image,"alt":res.properties.nickname+"님의 프로필 사진"}));
			console.log(res.id); // 콘솔 로그에 id 정보 출력(id는 res안에 있으므로 res.id로 불러옴)
			console.log(res.kaccount_email);
			//res.properties.nickname로도 접근가능
			console.log(authObj.access_token); //콘솔 로그에 토큰값 출력
          
		},
		fail: function(error) {
			console.log(error);
		}
	});
}
 
/* login 버튼 생성 후 token 받기 */
function createKakaotalkLogin(){
	$("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
	var loginBtn = $("#kakao_login");
    
	loginBtn.click(function(){
		Kakao.Auth.login({
			persistAccessToken: true,
			persistRefreshToken: true,
			success: function(authObj) {
				getKakaotalkUserProfile();
				createKakaotalkLogout();
			},
			fail: function(err) {
				console.log(err);
			}
		});
	});
	$("#kakao-logged-group").prepend(loginBtn)
}
 
/* 로그인 처리 후 로그아웃 버튼 생성 */
function createKakaotalkLogout(){
	$("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
	var logoutBtn = $("<a/>",{"class":"kakao-logout-btn","text":"로그아웃"});
	logoutBtn.click(function(){
		Kakao.Auth.logout();
		createKakaotalkLogin();
		$("#kakao-profile").text("");
	});
	
	$("#kakao-logged-group").prepend(logoutBtn);
	}
	if(Kakao.Auth.getRefreshToken()!=undefined&&Kakao.Auth.getRefreshToken().replace(/ /gi,"")!=""){
		createKakaotalkLogout();
		getKakaotalkUserProfile();
	}else{
		createKakaotalkLogin();
	}
});
