package sol.desk.wjjst.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import sol.desk.wjjst.dto.ImgDTO;

@Component
public class ImgDaoImpl implements ImgDAO {
	
	@Autowired
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	public void insert(ImgDTO dto) {
		ss.insert("insertImg", dto);
		
	}

	public void update(ImgDTO dto) {
		// TODO Auto-generated method stub
		
	}

	public void delete(int b_no) {
		// TODO Auto-generated method stub
		
	}

	public ImgDTO getData(int b_no) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<ImgDTO> getList() {
		return ss.selectList("selectAllImg");
	}
	
	
}
