package sol.desk.wjjst.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import sol.desk.wjjst.dao.MsgDAO;

@Controller
public class MsgController {

	MsgDAO dao;

	@Autowired
	public void setDao(MsgDAO dao) {
		this.dao = dao;
	}
	
	
	@RequestMapping(value = "readMore")
	public String main(Model model) {
		List list = dao.getList();
		
		model.addAttribute("list", list);
		return "msg";
	}
}
