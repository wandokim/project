package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import sol.desk.wjjst.dto.PwDTO;


public class PwDAOImpl {

	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	public void insert(PwDTO dto) {
		ss.insert("insertPw", dto);
		
	}

	public void update(PwDTO dto) {
		// TODO Auto-generated method stub
		
	}

	public void delete(int user_no) {
		// TODO Auto-generated method stub
		
	}

	public PwDTO getData(int user_no) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public List<PwDTO> getList() {
		return ss.selectList("selectAllPw");
	}
	
}
