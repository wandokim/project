package sol.desk.wjjst.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sol.desk.wjjst.dao.MsgDAO;
import sol.desk.wjjst.dao.MsgDaoImpl;
import sol.desk.wjjst.dto.MsgDTO;

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
	
	@RequestMapping(value = "sendMsgOk")
	public String main(@RequestParam("nic") String nic,@RequestParam("title") String title,@RequestParam("contents") String contents ) {
		//String nic =req.getParameter("nic");
		//String title =req.getParameter("title");
		//String contents = req.getParameter("contents");
		System.out.println(title);
		System.out.println(contents);
		System.out.println(nic);
		
		MsgDTO msgDto = new MsgDTO(1, 2, title, contents, 1);
		
		dao.insert(msgDto);
		//req.setAttribute("nic", nic);
		//req.setAttribute("title", title);
		//req.setAttribute("contents", contents);
		return "sendMsgOk";
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
