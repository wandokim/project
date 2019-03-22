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
	
	@Override
	public void insert(UserDTO dto) {
		ss.insert("insertUser", dto);
	}

	@Override
	public int userNo(String id) {
		return ss.selectOne("selectUserNo",id);
	}
	@Override
	public void update(UserDTO dto) {
		ss.update("updateUser", dto);
		
	}

	@Override
	public void delete(int user_no) {
		ss.delete("deleteUser", user_no);
		
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
