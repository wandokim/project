package sol.desk.wjjst.dao;

import java.util.List;

import sol.desk.wjjst.dto.DTO;

public interface DAO {
	public void insert(DTO dto);
	public void update(DTO dto);
	public void delete(int no);
	public DTO getData(int no);
	public List<DTO> getList(); 
}