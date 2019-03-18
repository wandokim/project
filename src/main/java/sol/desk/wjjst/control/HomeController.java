package sol.desk.wjjst.control;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/")
	public String home(Locale locale, Model model) {
		/*logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );*/
		
		return "main";
	}
	
	@RequestMapping(value="main")
	public String main() {
		return "main";
	}
	
	@RequestMapping(value="login")
	public String login() {
		return "login";
	}
	
	@RequestMapping(value="register")
	public String register() {
		return "register";
	}
	
	@RequestMapping(value="dashboard")
	public String dash() {
		return "dashboard";
	}
	
	// 네이버 로그인 api callback
	@RequestMapping(value="callback")
	public String callback() {
		return "callback";
	}
	
	@RequestMapping(value="loginOk")
	public String loginOk() {
		return "loginOk";
	}
	
	@RequestMapping(value="test")
	public String test() {
		return "dashboardTestFile";
	}
}
