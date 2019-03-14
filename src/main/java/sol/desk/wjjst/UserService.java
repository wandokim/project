package sol.desk.wjjst;

import org.springframework.web.servlet.ModelAndView;

import sol.desk.wjjst.dto.UserDTO;

public interface UserService {
	public void insert(UserDTO dto);
	public void update(UserDTO dto);
	public void delete(int user_no);
	public ModelAndView getData(int user_no);
	public ModelAndView getList();
}
