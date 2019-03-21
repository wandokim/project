package sol.desk.wjjst.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import sol.desk.wjjst.dto.ImgDTO;

@Component
public interface ImgDAO {
	public void insert(ImgDTO dto);
	public void update(ImgDTO dto);
	public void delete(int b_no);
	public ImgDTO getData(int b_no);
	public List<ImgDTO> getList(); 
}
