package com.kkomjirock.web.news.service;

import java.util.List;
import java.util.Map;

import com.kkomjirock.web.news.dto.BoardVO;

public interface BoardService {
	//게시판 리스트
	public List<BoardVO> getBoardList() throws Exception;
	//글쓰기 
	public void insertBoard(BoardVO boardVO) throws Exception;	
	//조회수 +1
	public BoardVO getBoardContent(int bid) throws Exception;
	//수정
	public void updateBoard(BoardVO boardVO) throws Exception;
}
