package sol.desk.wjjst.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import sol.desk.wjjst.dto.BoardDTO;

public class BoardDAOImpl{

	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	public void insert(BoardDTO dto) {
		ss.insert("insertBoard", dto);
		
	}

	public void update(BoardDTO dto) {
		// TODO Auto-generated method stub
		
	}

	public void delete(int b_no) {
		// TODO Auto-generated method stub
		
	}

	public BoardDTO getData(int b_no) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<BoardDTO> getList() {
		return ss.selectList("selectAllBoard");
	}
	
}
