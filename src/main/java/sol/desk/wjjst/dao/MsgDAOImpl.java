package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import sol.desk.wjjst.dto.MsgDTO;


public class MsgDAOImpl {
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	public void insert(MsgDTO dto) {
		ss.insert("insertMsg", dto);
		
	}

	public void update(MsgDTO dto) {
		// TODO Auto-generated method stub
		
	}

	public void delete(int m_no) {
		// TODO Auto-generated method stub
		
	}

	public MsgDTO getData(int m_no) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<MsgDTO> getList() {
		return ss.selectList("selectAllMsg");
	}
	
	
}
