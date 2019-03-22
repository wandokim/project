package sol.desk.wjjst.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import sol.desk.wjjst.dto.BoardDTO;

@Component
public class BoardDaoImpl implements BoardDAO{

	@Autowired
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	@Override
	public void insert(BoardDTO dto) {
		ss.insert("insertBoard", dto);
		
	}

	@Override
	public void update(BoardDTO dto) {
		ss.update("updateBoard", dto);
		
	}

	@Override
	public void delete(int b_no) {
		ss.delete("deleteBoard", b_no);
		
	}

	@Override
	public BoardDTO getData(int b_no) {
		// TODO Auto-generated method stub
		return null;
	}
			
	@Override
	public List<BoardDTO> getList() {
		// TODO Auto-generated method stub
		return null;
	}

	
	
}
