package sol.desk.wjjst.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import sol.desk.wjjst.dto.UserDTO;

@Component
public interface UserDAO {
	public void insert(UserDTO dto);
	public void update(UserDTO dto);
	public void delete(int no);
	public UserDTO getData(int no);
	public List<UserDTO> getList(); 
}
