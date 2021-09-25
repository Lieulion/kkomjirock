package com.kkomjirock.web.news.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kkomjirock.web.news.dto.BoardVO;
import com.kkomjirock.web.news.service.BoardService;
import com.kkomjirock.web.common.Pagination;

@Controller
@RequestMapping(value = "/news")
public class BoardController {

	@Inject
	private BoardService boardService;
	
	//뉴스 리스트 가져오기
	@RequestMapping(value = "/newsList", method = RequestMethod.GET) ///getBoardList
	public String getBoardList(Model model,
								@RequestParam(required = false, defaultValue = "1") int page, 
								@RequestParam(required = false, defaultValue = "1") int range) throws Exception {

		//전체 게시글 개수
		int listCnt = boardService.getBoardListCnt();
		//Pagination 객체생성
		Pagination pagination = new Pagination();
		pagination.pageInfo(page, range, listCnt);

		model.addAttribute("pagination", pagination);
		model.addAttribute("newsList", boardService.getBoardList(pagination));

		return "news/newsList";

	}
	// 뉴스 작성폼으로 가기
	@RequestMapping("/newsForm")
	public String boardForm(@ModelAttribute("boardVO") BoardVO vo, Model model) {
		
		return "news/newsForm";
	}


	@RequestMapping(value = "/newsSave", method = RequestMethod.POST)
	public String saveBoard(@ModelAttribute("BoardVO") BoardVO boardVO, @RequestParam("mode") String mode, RedirectAttributes rttr) throws Exception {
		
		if (mode.equals("edit")) {
			boardService.updateBoard(boardVO);
		} else {
			boardService.insertBoard(boardVO);
		}

		return "redirect:/news/newsList";

	}

	@RequestMapping(value = "/getBoardContent", method = RequestMethod.GET)
	public String getBoardContent(Model model, @RequestParam("bid") int bid) throws Exception {
		
		model.addAttribute("boardContent", boardService.getBoardContent(bid));
		return "news/newsContent";
	}

	@RequestMapping(value = "/editForm", method = RequestMethod.GET)
	public String editForm(@RequestParam("bid") int bid, @RequestParam("mode") String mode, Model model) throws Exception {
		
		model.addAttribute("boardContent", boardService.getBoardContent(bid));
		model.addAttribute("mode", mode);
		model.addAttribute("boardVO", new BoardVO());

		return "news/newsForm";

	}
	@RequestMapping(value = "/deleteBoard", method = RequestMethod.GET)
	public String deleteBoard(RedirectAttributes rttr, @RequestParam("bid") int bid) throws Exception {
		boardService.deleteBoard(bid);
		return "redirect:/news/newsList";
	}








	
}
