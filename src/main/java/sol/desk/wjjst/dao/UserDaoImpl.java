package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sol.desk.wjjst.dto.UserDTO;

@Repository
public class UserDaoImpl {

	@Autowired
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	

	public void insert(UserDTO dto) {
		ss.insert("insertUser", dto);
	}


	public void update(UserDTO dto) {
		// TODO Auto-generated method stub
		
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
