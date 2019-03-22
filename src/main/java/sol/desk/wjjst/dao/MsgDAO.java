package sol.desk.wjjst.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import sol.desk.wjjst.dto.MsgDTO;

@Component
public interface MsgDAO {
	public void insert(MsgDTO dto);
	public void update(MsgDTO dto);
	public void delete(int m_no);
	public MsgDTO getData(int m_no);
	public List<MsgDTO> getList(int num);
}
