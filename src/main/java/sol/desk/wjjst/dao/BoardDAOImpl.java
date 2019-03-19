package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import sol.desk.wjjst.dto.BoardDTO;
import sol.desk.wjjst.dto.DTO;
import sol.desk.wjjst.dto.UserDTO;

@Repository
public class BoardDAOImpl implements DAO {

	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	@Override
	public void insert(DTO dto) {
		ss.insert("insertBoard", dto);
		
	}

	@Override
	public void update(DTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int b_no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BoardDTO getData(int b_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DTO> getList() {
		return ss.selectList("selectAllBoard");
	}
	
}
