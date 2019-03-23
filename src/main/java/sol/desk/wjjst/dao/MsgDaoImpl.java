package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import sol.desk.wjjst.dto.MsgDTO;

@Component
public class MsgDaoImpl implements MsgDAO {
	
	@Autowired
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public void insert(MsgDTO dto) {
		ss.insert("insertMsg", dto);
		
	}

	@Override
	public void update(int m_no) {
		ss.update("updateMsg", m_no);
		
	}

	@Override
	public void delete(int m_no) {
		// TODO Auto-generated method stub
		ss.delete("deleteMsg", m_no); 
	}

	@Override
	public MsgDTO getData(int m_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MsgDTO> getList(int num) {
		return ss.selectList("selectAllMsg",num);
	}
	
	public List<MsgDTO> getOneList(int num) {
		return ss.selectList("selectOneMsg",num);
	}
	
	
	public List<MsgDTO> getOneOne(int num) {
		return ss.selectList("selectOneOne",num);
	}
	
	public List<MsgDTO> limitMessage(){
		return ss.selectList("selectMsg");
	}
	
	public int recNo(String nic) {
		return ss.selectOne("selectRecNo",nic);
	}
	public String recName(int num) {
		return ss.selectOne("selectRecName",num);
	}
	
	
}
