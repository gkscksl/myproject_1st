package com.care.coffee.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class BoardController {
	@Autowired private BoardService service;
	
	@RequestMapping("/board/boardForm")
	public String boardForm(Model model,
			@RequestParam(value="currentPage", required = false)String cp) {
		service.boardForm(cp, model);
		return "board/boardForm";
	}
	
	@Autowired private HttpSession session;
	
	@RequestMapping("/board/boardWrite")
	public String boardWrite() {
		String sessionId = (String) session.getAttribute("userId");
		if(sessionId.equals("admin")==false)
			return "redirect:/login";
		return "board/boardWrite";
	}
	
	@PostMapping("/board/boardWriteProc")
	public String boardWriteProc(MultipartHttpServletRequest multi) {
		
		String path = service.boardWriteProc(multi);
		return path;
	}
	
	@RequestMapping("/board/boardContent")
	public String boardContent(String no, Model model) {
		BoardDTO board = service.boardContent(no);
		if(board == null) {
			return "redirect:/board/boardForm";
		}
		
		model.addAttribute("board", board);
		return "board/boardContent";
	}
	
	@RequestMapping("/board/boardDownload")
	public void boardDownload(String no, HttpServletResponse response) {
		service.boardDownload(no, response);
	}
	
	@RequestMapping("/board/boardModify")
	public String boardModify(String no, Model model) {
		String sessionId = (String) session.getAttribute("userId");
		if(sessionId.equals("admin")==false)
			return "redirect:/board/boardForm";
		String path = service.boardModify(no, model);
		return path;
	}
	
	@PostMapping("/board/boardModifyProc")
	public String boardModifyProc(BoardDTO board, RedirectAttributes ra) {
		String sessionId = (String) session.getAttribute("userId");
		if(sessionId.equals("admin")==false)
			return "redirect:/board/boardForm";
		String msg = service.boardModifyProc(board);
		ra.addFlashAttribute("msg", msg);
		
		if(msg.equals("게시글 수정 성공"))
			return "redirect:/board/boardContent?no="+board.getNo();
		
		return "redirect:/board/boardModify?no="+board.getNo();
	}
	
	@RequestMapping("/board/boardDeleteProc")
	public String boardDeleteProc(String no) {
		String sessionId = (String) session.getAttribute("userId");
		if(sessionId.equals("admin")==false)
			return "redirect:/board/boardForm";
		
		String msg = service.boardDeleteProc(no);
		if(msg.equals("작성자만 삭제 할 수 있습니다."))
			return "redirect:boardContent?no="+no;
		
		return "redirect:/board/boardForm";
	}
	
	@RequestMapping("/msr/msreward/level_benefit.do")
	public String level_benefit() {
		return "/board/level_benefit";
	}
	
	@RequestMapping("/msr/msreward/star.do")
	public String star() {
		return "/board/star";
	}
	@RequestMapping("/msr/msreward/about.do")
	public String about() {
		return "/board/about";
	}
		@RequestMapping("/msr/index.do")
	public String index() {
		return "/board/index";
	}
}