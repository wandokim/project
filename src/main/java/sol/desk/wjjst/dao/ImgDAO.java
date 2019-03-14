package sol.desk.wjjst.dao;

import java.util.List;

import sol.desk.wjjst.dto.ImgDTO;

public interface ImgDAO {
	public void insert(ImgDTO dto);
	public void update(ImgDTO dto);
	public void delete(int b_no);
	public ImgDTO getData(int b_no);
	public List<ImgDTO> getList();
}
