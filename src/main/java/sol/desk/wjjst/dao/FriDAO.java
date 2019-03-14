package sol.desk.wjjst.dao;

import java.util.List;

import sol.desk.wjjst.dto.FriDTO;

public interface FriDAO {
	public void insert(FriDTO dto);
	public void update(FriDTO dto);
	public void delete(int f_no);
	public FriDTO getData(int f_no);
	public List<FriDTO> getList();
}
