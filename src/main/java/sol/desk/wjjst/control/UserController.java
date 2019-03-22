package sol.desk.wjjst.control;


import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import sol.desk.wjjst.dao.PwDAO;
import sol.desk.wjjst.dao.PwDaoImpl;
import sol.desk.wjjst.dao.UserDAO;
import sol.desk.wjjst.dto.PwDTO;
import sol.desk.wjjst.dto.UserDTO;

@Controller
public class UserController {
	
	UserDAO dao;
	PwDaoImpl pdao;
	
	@Autowired
	public void setDao(UserDAO dao) {
		this.dao = dao;
	}
	
	@Autowired
	public void setPDad(PwDaoImpl pdao) {
		this.pdao = pdao;
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
		if(dao.checkUser(id)==true) {
			PwDTO pwDTO = pdao.getData(dao.userNo(id));
			System.out.println(pwDTO.getPassword());
			if(pwDTO.getPassword().equals(pwd)) {
				System.out.println("nicname 값 가져오기 전");
				session.setAttribute("nicname", dao.getData(id).getNicname());
				System.out.println("nicname 값 가져오기 후");
				session.setAttribute("id", id);
				session.setAttribute("user_no", dao.userNo(id));
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
	public String ModifyOk(@RequestParam("nicname") String nicname,@RequestParam("pwd") String pwd,@RequestParam("email") String email) {
		UserDTO userDto = new UserDTO(nicname, pwd, email, 1, 2);
		dao.update(userDto);
		
		int user_no = dao.userNo(nicname);
		
		
		PwDTO pwdto = new PwDTO(user_no, pwd);
		/*수정 더 해야함*/
		
		
		return "Profile";
	}
	
	
}
