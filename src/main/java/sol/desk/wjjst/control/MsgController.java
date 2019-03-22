package sol.desk.wjjst.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	public String main(@RequestParam("nic") String nic,@RequestParam("title") String title,@RequestParam("contents") String contents,
			HttpSession session) {		
		String user_no = session.getAttribute("user_no").toString();
		System.out.println(user_no);
		int userNo = Integer.parseInt(user_no);
		System.out.println(userNo);
		
		int num = dao.recNo(nic);	
		
		MsgDTO msgDto = new MsgDTO(userNo, num, title, contents, 1);
		
		dao.insert(msgDto);
		
		return "sendMsgOk";
	}
	
	@RequestMapping(value = "checkMsg")
	public String checkMsg(Model model,HttpSession session,HttpServletRequest req) {
		String user_no = session.getAttribute("user_no").toString();
		System.out.println(user_no);
		int userNo = Integer.parseInt(user_no);
		System.out.println(userNo);
		
		List<MsgDTO> list = dao.getList(userNo);
		
		model.addAttribute("list", list);
		
		return "checkMsg";
	}
	
	@RequestMapping(value = "detailMsg")
	public String detailMsg(Model model,HttpSession session) {
		String user_no = session.getAttribute("user_no").toString();
		System.out.println(user_no);
		int userNo = Integer.parseInt(user_no);
		System.out.println(userNo);
		List list = dao.getList(userNo);
		
		model.addAttribute("list", list);
		return "detailMsg";
	}
	
	@RequestMapping(value = "deleteMsg")
	public String deleteMsg(int m_no) {	
		
		dao.delete(m_no);		
		return "checkMsg";
	}
	
	
	
}
