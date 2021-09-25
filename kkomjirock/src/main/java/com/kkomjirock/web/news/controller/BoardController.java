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


@Controller
@RequestMapping(value = "/news")
public class BoardController {

	@Inject
	private BoardService boardService;
	
	//���� ����Ʈ ��������
	@RequestMapping(value = "/newsList", method = RequestMethod.GET) ///getBoardList
	public String getBoardList(Model model) throws Exception {
		
		model.addAttribute("newsList", boardService.getBoardList());
		return "news/newsList";

	}
	// ���� �ۼ������� ����
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






	
}
