package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import sol.desk.wjjst.dto.DTO;

public class MsgDAOImpl implements DAO {
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public void insert(DTO dto) {
		ss.insert("insertMsg", dto);
		
	}

	@Override
	public void update(DTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int m_no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public DTO getData(int m_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DTO> getList() {
		return ss.selectList("selectAllMsg");
	}
	
	
}
