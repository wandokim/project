package sol.desk.wjjst.control;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sol.desk.wjjst.dao.DAO;
import sol.desk.wjjst.dao.UserDaoImpl;
import sol.desk.wjjst.dto.UserDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/")
	public String home(Locale locale, Model model) {
		/*
		 * logger.info("Welcome home! The client locale is {}.", locale);
		 * 
		 * Date date = new Date(); DateFormat dateFormat =
		 * DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		 * 
		 * String formattedDate = dateFormat.format(date);
		 * 
		 * model.addAttribute("serverTime", formattedDate );
		 */

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

	// SOL 로그인 확인
	@RequestMapping(value = "loginOk")
	public String loginOk() {
		return "loginOk";
	}

	// 로그아웃
	@RequestMapping(value = "logoutOk")
	public String logoutOk() {
		return "logoutOk";
	}

	@RequestMapping(value = "test")
	public String test() {
		return "dashboardTestFile";
	}

	@RequestMapping(value = "RankINFO")
	public String RankINFO() {
		return "RankINFO";
	}

	@RequestMapping(value = "registeOk")
	public String registeOk(@RequestParam("id") String id, @RequestParam("nicname") String nicname,
			@RequestParam("pwd") String pwd,@RequestParam("email") String email) {
		
		UserDaoImpl dao = new UserDaoImpl();
		UserDTO userDto = new UserDTO(nicname, id, email, 1, 2);
		
		dao.insert(userDto);
		return "main";
	}

	@RequestMapping(value = "Profile")
	public String Profile() {
		return "Profile";
	}
	
	@RequestMapping(value = "lotation")
	public String lotation() {
		return "lotationChamp";
	}
}
