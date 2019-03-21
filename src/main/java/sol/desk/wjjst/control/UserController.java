package sol.desk.wjjst.control;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

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
	
	
}
