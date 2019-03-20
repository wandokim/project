package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import sol.desk.wjjst.dto.UserDTO;

@Component
public class UserDaoImpl implements UserDAO{
	
	@Autowired
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	

	public void insert(UserDTO dto) {
		ss.insert("insertUser", dto);
	}


	public void update(UserDTO dto) {
		ss.update("updateUser", dto);
		
	}


	public void delete(int user_no) {
		// TODO Auto-generated method stub
		
	}


	public UserDTO getData(int user_no) {
		// TODO Auto-generated method stub
		return null;
	}
	

	public List<UserDTO> getList() {
		
		return ss.selectList("selectAllUser");
	}
	
}
