package sol.desk.wjjst.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import sol.desk.wjjst.dto.FriendDTO;

@Component
public interface FriendDAO {
	public void insert(FriendDTO dto);
	public void update(FriendDTO dto);
	public void delete(int f_no);
	public FriendDTO getData(int f_no);
	public List<FriendDTO> getList();
}
