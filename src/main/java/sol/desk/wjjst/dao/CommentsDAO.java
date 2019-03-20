package sol.desk.wjjst.dao;

import java.util.List;

import sol.desk.wjjst.dto.CommentsDTO;

public interface CommentsDAO {
	public void insert(CommentsDTO dto);
	public void update(CommentsDTO dto);
	public void delete(int com_no);
	public CommentsDTO getData(int com_no);
	public List<CommentsDTO> getList(); 
}
