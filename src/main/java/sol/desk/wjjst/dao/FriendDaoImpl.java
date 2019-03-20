package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sol.desk.wjjst.dto.FriendDTO;

@Repository
public class FriendDaoImpl implements FriendDAO{
	
	@Autowired
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	public void insert(FriendDTO dto) {
		ss.insert("insertFri", dto);
		
	}

	public void update(FriendDTO dto) {
		// TODO Auto-generated method stub
		
	}

	public void delete(int f_no) {
		// TODO Auto-generated method stub
		
	}

	public FriendDTO getData(int f_no) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<FriendDTO> getList() {
		return ss.selectList("selectAllFri");
	}
	
	
}
