package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import sol.desk.wjjst.dto.DTO;

public class ComDAOImpl implements DAO {

	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	@Override
	public void insert(DTO dto) {
		ss.insert("insertCom", dto);
		
	}

	@Override
	public void update(DTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int com_no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public DTO getData(int com_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DTO> getList() {
		return ss.selectList("selectAllCom");
	}

}
