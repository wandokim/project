package sol.desk.wjjst.dao;

import java.util.List;

import sol.desk.wjjst.dto.UserDTO;

public interface UserDAO {
	public void insert(UserDTO dto);
	public void update(UserDTO dto);
	public void delete(int user_no);
	public UserDTO getData(int user_no);
	public List<UserDTO> getList();
}
