package sol.desk.wjjst.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import sol.desk.wjjst.dao.MsgDAO;

@Controller
public class MsgController {

	MsgDAO dao;

	@Autowired
	public void setDao(MsgDAO dao) {
		this.dao = dao;
	}
	
}
