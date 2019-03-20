package sol.desk.wjjst.dao;

import java.util.List;

import sol.desk.wjjst.dto.FriendDTO;


public interface FriendDAO {
	public void insert(FriendDTO dto);
	public void update(FriendDTO dto);
	public void delete(int f_no);
	public FriendDTO getData(int f_no);
	public List<FriendDTO> getList();
}
