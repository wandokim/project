package sol.desk.wjjst.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import sol.desk.wjjst.dao.CommentsDAO;

@Controller
public class CommentsController {

	CommentsDAO dao;

	@Autowired
	public void setDao(CommentsDAO dao) {
		this.dao = dao;
	}
	
	
}
