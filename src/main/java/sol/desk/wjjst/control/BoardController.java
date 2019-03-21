package sol.desk.wjjst.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sol.desk.wjjst.dao.BoardDAO;
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
	
	@RequestMapping(value = "boardOk")
	public String registeOk(@RequestParam("title") String title,
			@RequestParam("writer") String writer,@RequestParam("contents") String contents) {
		
		BoardDTO boardDto = new BoardDTO(title, writer, contents, 1, 2);
		dao.insert(boardDto);
		return "main";
	}
}
