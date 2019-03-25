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
		return ss.selectOne("selectOneBoard", b_no);
	}
			
	@Override
	public List<BoardDTO> getList() {		
		return ss.selectList("selectAllBoard");
	}

	@Override
	public void riseHits(int b_no) {
		ss.update("riseHits", b_no);
	}
	
	@Override
	public void riseLike(int b_no) {
		ss.update("riseLike", b_no);
	}
	
	
}
