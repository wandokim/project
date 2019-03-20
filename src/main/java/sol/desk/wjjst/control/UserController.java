package sol.desk.wjjst.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sol.desk.wjjst.dao.UserDAO;
import sol.desk.wjjst.dto.UserDTO;

@Controller
public class UserController {

	@Autowired
	UserDAO dao;
	
	@RequestMapping(value = "test")
	public String test(Model model) {
		List<UserDTO> list = dao.getList();
		
		model.addAttribute("list", list);
		return "dashboardTestFile";
	}
	
	@RequestMapping(value = "registeOk")
	public String registeOk(@RequestParam("id") String id, @RequestParam("nicname") String nicname,
			@RequestParam("pwd") String pwd,@RequestParam("email") String email) {
		
		UserDTO userDto = new UserDTO(nicname, id, email, 1, 2);
		dao.insert(userDto);
		return "main";
	}
}
