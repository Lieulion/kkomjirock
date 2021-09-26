package com.kkomjirock.web.news.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kkomjirock.web.news.dao.BoardDAO;
import com.kkomjirock.web.news.dto.BoardVO;
import com.kkomjirock.web.common.Pagination;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Inject
	private BoardDAO boardDAO;
	
	
	@Override
	public List<BoardVO> getBoardList(Pagination pagination) throws Exception {
		return boardDAO.getBoardList(pagination);
	}


	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {
		boardDAO.insertBoard(boardVO);
	}

	@Override
	public BoardVO getBoardContent(int bid) throws Exception {
		BoardVO	boardVO = new BoardVO();
		
		boardDAO.updateViewCnt(bid);
		return boardVO;
	}


	@Override
	public void updateBoard(BoardVO boardVO) throws Exception {
		boardDAO.updateBoard(boardVO);
	}


	@Override
	public void deleteBoard(int bid) throws Exception {
		boardDAO.deleteBoard(bid);
	}


	@Override
	public int getBoardListCnt() throws Exception {
		return boardDAO.getBoardListCnt();
	}


	

	

}
