package sol.desk.wjjst.dao;

import java.util.List;

import sol.desk.wjjst.dto.PwDTO;

public interface PwDAO {
	public void insert(PwDTO dto);
	public void update(PwDTO dto);
	public void delete(int user_no);
	public PwDTO getData(int user_no);
	public List<PwDTO> getList();
}
