package sol.desk.wjjst.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sol.desk.wjjst.dao.PwDAO;

@Controller
public class PwController {

	PwDAO dao;
	
	@Autowired
	public void setDao(PwDAO dao) {
		this.dao = dao;
	}

	@RequestMapping(value = "pwOk")
	public String registeOk(@RequestParam("title") String title,
			@RequestParam("writer") String writer,@RequestParam("contents") String contents) {
		
		return "main";
	}
}
