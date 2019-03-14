package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import sol.desk.wjjst.dto.UserDTO;

@Repository
public class UserDaoImpl implements UserDAO {

	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	@Override
	public void insert(UserDTO dto) {
		ss.insert("insertUser", dto);
		
	}

	@Override
	public void update(UserDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int user_no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public UserDTO getData(int user_no) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<UserDTO> getList() {
		return ss.selectList("selectAllUser");
	}
	
}
