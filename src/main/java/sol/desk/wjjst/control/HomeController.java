package sol.desk.wjjst.control;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sol.desk.wjjst.dao.DAO;
import sol.desk.wjjst.dao.UserDaoImpl;
import sol.desk.wjjst.dto.UserDTO;

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

	/*
	 * @RequestMapping(value="register") public String register() { return
	 * "register"; }
	 */
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
	public String registeOk(@ModelAttribute UserDTO dto) {
		//userDao.insert(dto);
		return "registeOk";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(UserDTO dto, Model model) {
		System.out.println("post방식임");

		//userDao.insert(dto);
		model.addAttribute("result", "성공");

		return "succes";
	}

}
