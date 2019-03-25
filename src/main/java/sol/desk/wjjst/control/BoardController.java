package sol.desk.wjjst.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sol.desk.wjjst.dao.BoardDAO;
import sol.desk.wjjst.dao.UserDAO;
import sol.desk.wjjst.dao.UserDaoImpl;
import sol.desk.wjjst.dto.BoardDTO;

@Controller
public class BoardController {
	
	BoardDAO dao;
	
	@Autowired
	public void setDao(BoardDAO dao) {
		this.dao = dao;
	}

	@RequestMapping(value = "board")
	public String board(Model model) {
		List<BoardDTO> list = dao.getList();
		
		model.addAttribute("list", list);
		return "boardTest";
	}
	
	
	@RequestMapping(value = "freeBoard")
	public String freeBoard(Model model) {
		
		List<BoardDTO> list = dao.getList();
		
		model.addAttribute("list", list);
		return "freeBoard";
	}
		
	@RequestMapping(value = "detail_board")
	public String detail_board(Model model,@RequestParam("b_no") String b_no,HttpSession session) {
		int bNo = Integer.parseInt(b_no);
		
		BoardDTO dto = dao.getData(bNo);
		dao.riseHits(bNo);
		
		model.addAttribute("dto", dto);
		session.setAttribute("checkUserNo", dto.getUser_no());
		return "detail_board";
	}
	
	@RequestMapping(value = "writeFreeBoard")
	public String writeFreeBoard() {
		return "writeFreeBoard";
	}
	
	@RequestMapping(value = "deleteOk")
	public String deleteOk(HttpSession session,Model model) {
		dao.delete(Integer.parseInt(session.getAttribute("user_no").toString()));
		
		List<BoardDTO> list = dao.getList();
		
		model.addAttribute("list", list);
		return "freeBoard";
	}
	
	@RequestMapping(value = "boardOk")
	   public String registeOk(@RequestParam("title") String title,
	         @RequestParam("contents") String contents, HttpSession session,Model model) {		
			
		
		String name = session.getAttribute("nicname").toString();		 	
		
		String no = session.getAttribute("user_no").toString();
		int user_no = Integer.parseInt(no);
		
		BoardDTO boardDto = new BoardDTO(user_no, title, name, contents, 0, 0);
		dao.insert(boardDto);
	     
		List<BoardDTO> list = dao.getList();
		model.addAttribute("list", list);
		return "freeBoard";
	}
	
	@RequestMapping(value = "bLike")
	public String bLike(HttpSession session,Model model,@RequestParam("b_no") String b_no) {
		dao.riseLike(Integer.parseInt(b_no));
		
		int bNo = Integer.parseInt(b_no);
		BoardDTO dto = dao.getData(bNo);

		model.addAttribute("dto", dto);
		return "detail_board";
	}
}
