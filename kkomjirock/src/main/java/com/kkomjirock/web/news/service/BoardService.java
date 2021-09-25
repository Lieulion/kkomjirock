package com.kkomjirock.web.news.service;

import java.util.List;
import java.util.Map;

import com.kkomjirock.web.news.dto.BoardVO;

public interface BoardService {
	//�Խ��� ����Ʈ
	public List<BoardVO> getBoardList() throws Exception;
	//�۾��� 
	public void insertBoard(BoardVO boardVO) throws Exception;	
	//��ȸ�� +1
	public BoardVO getBoardContent(int bid) throws Exception;
	//����
	public void updateBoard(BoardVO boardVO) throws Exception;
}
