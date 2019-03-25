package sol.desk.wjjst.control;


import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/")
	public String home(Locale locale, Model model) {

		return "main";
	}

	@RequestMapping(value = "main")
	public String main() {
		return "main";
	}

	@RequestMapping(value = "login")
	public String login() {
		return "login";
	}

	@RequestMapping(value="register")
	public String register() {
		return "register";
	}
	 
	@RequestMapping(value = "dashboard")
	public String dash() {
		return "dashboard";
	}

	// 네이버 로그인 api callback
	@RequestMapping(value = "callback")
	public String callback() {
		return "callback";
	}

	// 로그아웃
	@RequestMapping(value = "logoutOk")
	public String logoutOk() {
		return "logoutOk";
	}

	@RequestMapping(value = "RankINFO")
	public String RankINFO() {
		return "RankINFO";
	}




	
	@RequestMapping(value = "lotation")
	public String lotation(HttpServletRequest request, Model model) {
		Set path = request.getSession().getServletContext().getResourcePaths("/WEB-INF/views/img/champion");
		
		System.out.println(path);
		
		List<String> list1 = new ArrayList<String>();
		list1.addAll(path);
		List<String> list2 = new ArrayList<String>();
		
		for(String str : list1) {
			list2.add(str.replace("/WEB-INF/views/img/champion/", "").replace(".png", ""));
		}
		
		model.addAttribute("imgList", list2);
		
		return "lotationChamp";
	}
	
	@RequestMapping(value = "Modify")
	public String Modify() {
		return "Modify";
	}
	
	@RequestMapping(value = "teemo")
	public String teemo() {
		return "teemo";
	}
	
}
