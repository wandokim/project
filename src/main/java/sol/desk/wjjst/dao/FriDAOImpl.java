package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import sol.desk.wjjst.dto.FriDTO;

public class FriDAOImpl {
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	public void insert(FriDTO dto) {
		ss.insert("insertFri", dto);
		
	}

	public void update(FriDTO dto) {
		// TODO Auto-generated method stub
		
	}

	public void delete(int f_no) {
		// TODO Auto-generated method stub
		
	}

	public FriDTO getData(int f_no) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<FriDTO> getList() {
		return ss.selectList("selectAllFri");
	}
	
	
}
