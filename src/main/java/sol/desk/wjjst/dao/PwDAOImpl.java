package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import sol.desk.wjjst.dto.PwDTO;
import sol.desk.wjjst.dto.UserDTO;

public class PwDAOImpl implements PwDAO {

SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	@Override
	public void insert(PwDTO dto) {
		ss.insert("insertPw", dto);
		
	}

	@Override
	public void update(PwDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int user_no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public PwDTO getData(int user_no) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<PwDTO> getList() {
		return ss.selectList("selectAllPw");
	}
	
}
