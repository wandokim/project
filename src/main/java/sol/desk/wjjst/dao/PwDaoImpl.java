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
		ss.insert("insertPw", dto);
		
	}

	@Override
	public void update(PwDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int user_no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public PwDTO getData(int user_no) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<PwDTO> getList() {
		return ss.selectList("selectAllPw");
	}
	
}
