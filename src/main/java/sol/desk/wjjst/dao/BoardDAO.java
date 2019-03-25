package sol.desk.wjjst.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import sol.desk.wjjst.dto.BoardDTO;

@Component
public interface BoardDAO {
	public void insert(BoardDTO dto);
	public void update(BoardDTO dto);
	public void delete(int b_no);
	public BoardDTO getData(int b_no);
	public List<BoardDTO> getList();
	public void riseHits(int b_no);
	public void riseLike(int b_no);
}
