package com.kkomjirock.web.news.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kkomjirock.web.news.dto.BoardVO;
import com.kkomjirock.web.news.service.BoardService;


@Controller
@RequestMapping(value = "/news")
public class BoardController {

	@Inject
	private BoardService boardService;
	
	@RequestMapping(value = "/newsList", method = RequestMethod.GET) ///getBoardList
	public String getBoardList(Model model) throws Exception {

		model.addAttribute("newsList", boardService.getBoardList());

		return "news/newsList";

	}
	
	@RequestMapping("/newsForm")
	public String boardForm() {
		return "news/newsForm";
	}

	@RequestMapping(value = "/newsSave", method = RequestMethod.POST)
	public String saveBoard(@ModelAttribute("BoardVO") BoardVO boardVO, RedirectAttributes rttr) throws Exception {

		boardService.insertBoard(boardVO);

		return "redirect:/news/newsList";

	}


	
}
