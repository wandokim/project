package sol.desk.wjjst.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import sol.desk.wjjst.dao.MsgDaoImpl;

@Controller
public class MsgController {

	MsgDaoImpl dao;

	@Autowired
	public void setDao(MsgDaoImpl dao) {
		this.dao = dao;
	}
	
	
	@RequestMapping(value = "sendMsg")
	public String main() {
		
		return "sendMsg";
	}
	
	@RequestMapping(value = "checkMsg")
	public String checkMsg(Model model) {
		List list = dao.getList();
		
		model.addAttribute("list", list);
		return "checkMsg";
	}
	
	@RequestMapping(value = "detailMsg")
	public String detailMsg(Model model) {
		List list = dao.getList();
		
		model.addAttribute("list", list);
		return "detailMsg";
	}
	
	@RequestMapping(value = "deleteMsg")
	public String deleteMsg(int m_no) {	
		
		dao.delete(m_no);		
		return "checkMsg";
	}
	
	
	
}
