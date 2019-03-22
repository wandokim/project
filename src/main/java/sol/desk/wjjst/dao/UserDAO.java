package sol.desk.wjjst.dao;


import java.util.List;

import org.springframework.stereotype.Component;

import sol.desk.wjjst.dto.UserDTO;

@Component
public interface UserDAO {
	public void insert(UserDTO dto);
	public int userNo(String id); 
	public void update(UserDTO dto);
	public void delete(int no);
	public UserDTO getData(String id);
	public List<UserDTO> getList();
	public boolean checkUser(String id);

}
