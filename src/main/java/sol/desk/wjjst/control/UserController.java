package sol.desk.wjjst.control;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import sol.desk.wjjst.dao.MsgDaoImpl;
import sol.desk.wjjst.dao.PwDAO;
import sol.desk.wjjst.dao.PwDaoImpl;
import sol.desk.wjjst.dao.UserDAO;
import sol.desk.wjjst.dao.UserDaoImpl;
import sol.desk.wjjst.dto.BoardDTO;
import sol.desk.wjjst.dto.MsgDTO;
import sol.desk.wjjst.dto.PwDTO;
import sol.desk.wjjst.dto.UserDTO;

@Controller
public class UserController {
	
	UserDaoImpl dao;
	PwDaoImpl pdao;
	MsgDaoImpl mdao;
	
	@Autowired
	public void setDao(UserDaoImpl dao) {
		this.dao = dao;
	}
	
	@Autowired
	public void setPDad(PwDaoImpl pdao) {
		this.pdao = pdao;
	}

	@Autowired
	public void setMdao(MsgDaoImpl mdao) {
		this.mdao = mdao;
	}

	@RequestMapping(value = "test")
	public String test(Model model) {
		List<UserDTO> list = dao.getList();
		
		model.addAttribute("list", list);
		return "dashboardTestFile";
	}
	
	@RequestMapping(value = "registeOk")
	public String registeOk(@RequestParam("id") String id, @RequestParam("nicname") String nicname,
			@RequestParam("pwd") String pwd,@RequestParam("email") String email) {
		//HttpServletResponse rsp
		UserDTO userDto = new UserDTO(nicname, id, email, 1, 2);
		dao.insert(userDto);
		
		int user_no = dao.userNo(id);
		
		//System.out.println(user_no);
		//System.out.println(pwd);
		
		PwDTO pwDTO = new PwDTO(user_no,pwd);
		pdao.insert(pwDTO);
		
		//System.out.println(user_no);
		
		return "main";
		//return "pwOk?user_no="+user_no+"&pwd="+pwd;
		
	}
	
	@RequestMapping(value = "loginOk")
	public String loginOk(@RequestParam("id") String id, @RequestParam("password") String pwd, HttpSession session) {
		//System.out.println(dao.checkUser(id));
		if(dao.checkUser(id)==true) {
			PwDTO pwDTO = pdao.getData(dao.userNo(id));
			//System.out.println(pwDTO.getPassword());
			if(pwDTO.getPassword().equals(pwd)) {
				session.setAttribute("nicname", dao.getData(id).getNicname());
				session.setAttribute("id", id);
				session.setAttribute("user_no", dao.userNo(id));
								
				// 로그인 성공 시 해당 유저의 최근 읽지않은 5개의 메세지 호출
				List<MsgDTO> msgList = mdao.limitMessage(dao.userNo(id));
				
				session.setAttribute("msgList", msgList);
				
				//ArrayList<MsgDTO> list = (ArrayList)session.getAttribute("test");
				
				return "main";
			}else {
				session.setAttribute("msg", "패스워드를 다시 입력해주세요");				
				return "login";
			}
		}else {
			session.setAttribute("msg", "해당 아이디를 찾을 수 없습니다");
			return "login";
		}
	}
	
	@RequestMapping(value = "ModifyOk")
	public String ModifyOk(HttpSession session,@RequestParam("nicname") String nicname,@RequestParam("pwd") String pwd,@RequestParam("email") String email, Model model) {
		String id = session.getAttribute("id").toString();
		
		UserDTO userDto = new UserDTO(nicname, email, id);
		dao.update(userDto);

		//int user_no = dao.userNo(nicname);
		
		int user_no = dao.userNo(id);		
		
		PwDTO pwdto = new PwDTO(user_no, pwd);
		
		pdao.update(pwdto);
		
		UserDTO dto = dao.getData(id);		 
		
		session.setAttribute("nicname", dto.getNicname());		
		model.addAttribute("dto", dto);		
		
		return "Profile";
	}
	
	
	@RequestMapping(value = "registerId", method = RequestMethod.POST)
	public @ResponseBody String checkId(@RequestParam("id") String id) {
		String str = "";
		boolean result = dao.checkUser(id);
		
		if(result == true) {
			str = "NO";
		}else {
			str = "YES";
		}
		return str;
	}
	
	@RequestMapping(value = "registerNic", method = RequestMethod.POST)
	public @ResponseBody String checkNic(@RequestParam("nicname") String nicname) {
		String str = "";
		boolean result = dao.checkNic(nicname);
		
		if(result == true) {
			str = "NO";
		}else {
			str = "YES";
		}
		return str;
	}

	@RequestMapping(value = "Profile")
	   public String profile(HttpSession session, Model model) {			 	
		
		String id = session.getAttribute("id").toString();
		
		UserDTO dto = dao.getData(id);		 
		 
		 model.addAttribute("dto", dto);
		 		 
	     return "Profile";
	}
	
	
}
