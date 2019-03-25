package sol.desk.wjjst.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import sol.desk.wjjst.dao.MsgDaoImpl;
import sol.desk.wjjst.dao.UserDaoImpl;
import sol.desk.wjjst.dto.MsgDTO;

@Controller
public class MsgController {

	MsgDaoImpl dao;
	UserDaoImpl udao;

	@Autowired
	public void setDao(MsgDaoImpl dao) {
		this.dao = dao;
	}
	
	@Autowired
	public void setUdao(UserDaoImpl udao) {
		this.udao = udao;
	}

	@RequestMapping(value = "sendMsg")
	public String main() {
	
		
		return "sendMsg";
	}
	
	@RequestMapping(value = "sendMsgOk")
	public String main(@RequestParam("nic") String nic,@RequestParam("title") String title,@RequestParam("contents") String contents,
			HttpSession session,Model model) {		
		String user_no = session.getAttribute("user_no").toString();
		//System.out.println(user_no);
		int userNo = Integer.parseInt(user_no);
		//System.out.println(userNo);
		
		int num = dao.recNo(nic);	
		
		MsgDTO msgDto = new MsgDTO(userNo, num, title, contents, 1);
		
		dao.insert(msgDto);
		
		List<MsgDTO> list = dao.getList(userNo);
		
		model.addAttribute("list", list);
		
		return "checkMsg";
	}
	
	@RequestMapping(value = "checkMsg")
	public String checkMsg(Model model,HttpSession session,HttpServletRequest req) {
		String user_no = session.getAttribute("user_no").toString();
		//System.out.println(user_no);
		int userNo = Integer.parseInt(user_no);
		//System.out.println(userNo);
		
		List<MsgDTO> list = dao.getList(userNo);
		
		model.addAttribute("list", list);
		
		return "checkMsg";
	}

	@RequestMapping(value = "detailMsg")
	public String detailMsg(Model model,@RequestParam("num") int m_no, @RequestParam("nic") String nic,HttpSession session) {
		
		List<MsgDTO> list = dao.getOneOne(m_no);
		
		model.addAttribute("list", list);
		
		dao.update(m_no);
		
		// 로그인 성공 시 해당 유저의 최근 읽지않은 5개의 메세지 호출
		List<MsgDTO> msgList = dao.limitMessage(udao.userNo(session.getAttribute("id").toString()));
		session.setAttribute("msgList", msgList);
		
		return "detailMsg";
	}
	
	@RequestMapping(value = "deleteMsg")
	public String deleteMsg(@RequestParam("num") int m_no) {	
		
		System.out.println(m_no);
		dao.delete(m_no);		
		
		return "checkMsg";
	}
	
	
	
}
