package sol.desk.wjjst.dao;

import java.util.List;

import sol.desk.wjjst.dto.ComDTO;


public interface ComDAO {
	public void insert(ComDTO dto);
	public void update(ComDTO dto);
	public void delete(int com_no);
	public ComDTO getData(int com_no);
	public List<ComDTO> getList();
}
