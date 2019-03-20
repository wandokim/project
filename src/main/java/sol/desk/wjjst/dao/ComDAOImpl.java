package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import sol.desk.wjjst.dto.ComDTO;

public class ComDAOImpl {

	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	public void insert(ComDTO dto) {
		ss.insert("insertCom", dto);
		
	}

	public void update(ComDTO dto) {
		// TODO Auto-generated method stub
		
	}

	public void delete(int com_no) {
		// TODO Auto-generated method stub
		
	}

	public ComDTO getData(int com_no) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<ComDTO> getList() {
		return ss.selectList("selectAllCom");
	}

}
