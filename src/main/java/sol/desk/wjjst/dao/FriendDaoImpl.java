package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import sol.desk.wjjst.dto.FriendDTO;

@Component
public class FriendDaoImpl implements FriendDAO{
	
	@Autowired
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public void insert(FriendDTO dto) {
		ss.insert("insertFri", dto);
		
	}

	@Override
	public void update(FriendDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int f_no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public FriendDTO getData(int f_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FriendDTO> getList() {
		return ss.selectList("selectAllFri");
	}
	
	
}
