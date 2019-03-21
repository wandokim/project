package sol.desk.wjjst.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sol.desk.wjjst.dao.PwDAO;
import sol.desk.wjjst.dto.PwDTO;

@Controller
public class PwController {

	PwDAO dao;
	
	@Autowired
	public void setDao(PwDAO dao) {
		this.dao = dao;
	}

	@RequestMapping(value = "pwdOk")
	public String registeOk(HttpServletRequest req,HttpServletResponse rsp) {
		
		String userNo = (String) req.getAttribute("user_no");
		String pwd = (String) req.getAttribute("pwd");
		System.out.println(userNo);
		System.out.println(pwd);
		
		
		
		//int user_no = Integer.parseInt(userNo);
		//PwDTO dto = new PwDTO(user_no, pwd);
		//dao.insert(dto);
		
		return "main";
	}
}
