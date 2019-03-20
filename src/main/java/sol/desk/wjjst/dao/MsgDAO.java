package sol.desk.wjjst.dao;

import java.util.List;

import sol.desk.wjjst.dto.MsgDTO;

public interface MsgDAO {
	public void insert(MsgDTO dto);
	public void update(MsgDTO dto);
	public void delete(int m_no);
	public MsgDTO getData(int m_no);
	public List<MsgDTO> getList(); 
}
