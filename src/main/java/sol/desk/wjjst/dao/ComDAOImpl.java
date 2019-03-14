package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import sol.desk.wjjst.dto.ComDTO;
import sol.desk.wjjst.dto.UserDTO;

public class ComDAOImpl implements ComDAO {

	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	@Override
	public void insert(ComDTO dto) {
		ss.insert("insertCom", dto);
		
	}

	@Override
	public void update(ComDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int com_no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ComDTO getData(int com_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ComDTO> getList() {
		return ss.selectList("selectAllCom");
	}

}
