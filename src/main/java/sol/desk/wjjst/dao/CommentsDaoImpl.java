package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import sol.desk.wjjst.dto.CommentsDTO;

@Component
public class CommentsDaoImpl implements CommentsDAO {
	
	@Autowired
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	@Override
	public void insert(CommentsDTO dto) {
		ss.insert("insertComm", dto);
		
	}

	@Override
	public void update(CommentsDTO dto) {
		ss.update("updateComm", dto);
		
	}

	@Override
	public void delete(int com_no) {
		ss.delete("deleteComm", com_no);
		
	}

	@Override
	public CommentsDTO getData(int com_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CommentsDTO> getList() {
		return ss.selectList("selectAllCom");
	}

}
