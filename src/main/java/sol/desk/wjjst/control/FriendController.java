package sol.desk.wjjst.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import sol.desk.wjjst.dao.FriendDAO;

@Controller
public class FriendController {

	FriendDAO dao;

	@Autowired
	public void setDao(FriendDAO dao) {
		this.dao = dao;
	}
	
}
