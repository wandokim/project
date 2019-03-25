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
		
		model.addAttribute("wando", list);
		return "freeBoard";
	}
		
	@RequestMapping(value = "detail_board")
	public String detail_board(Model model) {
		
		List<BoardDTO> list = dao.getList();
		
		model.addAttribute("wando", list);
		return "detail_board";
	}
	
	
	
	@RequestMapping(value = "writeFreeBoard")
	public String writeFreeBoard() {
		return "writeFreeBoard";
	}
	
	@RequestMapping(value = "boardOk")
	   public String registeOk(@RequestParam("title") String title,
	         @RequestParam("contents") String contents, HttpSession session,Model model) {		
			
		
		String name = session.getAttribute("nicname").toString();		 	
		
		String no =session.getAttribute("user_no").toString();
		 int user_no = Integer.parseInt(no);
		
	      
	     BoardDTO boardDto = new BoardDTO(user_no, title, name, contents, 1, 2);
	     dao.insert(boardDto);
	     
	     List<BoardDTO> list = dao.getList();
			
			model.addAttribute("wando", list);
	      return "freeBoard";
	}
}
