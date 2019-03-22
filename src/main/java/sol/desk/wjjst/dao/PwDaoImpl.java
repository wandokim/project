package sol.desk.wjjst.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import sol.desk.wjjst.dto.PwDTO;

@Component
public class PwDaoImpl implements PwDAO {

	@Autowired
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	@Override
	public void insert(PwDTO dto) {
		ss.insert("insertPassword", dto);
		
	}

	@Override
	public void update(PwDTO dto) {
		ss.update("updatePassword", dto);
		
	}

	@Override
	public void delete(int user_no) {
		ss.delete("deletePassword", user_no);
		
	}

	@Override
	public PwDTO getData(int user_no) {
		return ss.selectOne("selectOnePassword", user_no);
	}
	
	@Override
	public List<PwDTO> getList() {
		return ss.selectList("selectAllPw");
	}
	
}
