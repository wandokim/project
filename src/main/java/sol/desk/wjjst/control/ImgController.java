package sol.desk.wjjst.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import sol.desk.wjjst.dao.ImgDAO;

@Controller
public class ImgController {

	ImgDAO dao;

	@Autowired
	public void setDao(ImgDAO dao) {
		this.dao = dao;
	}
	
	
}
