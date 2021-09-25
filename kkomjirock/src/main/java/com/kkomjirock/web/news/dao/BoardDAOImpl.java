package com.kkomjirock.web.news.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kkomjirock.web.news.dto.BoardVO;
import com.kkomjirock.web.common.Pagination;



//namespace : com.kkomjirock.web.news.mappers.boardMapper

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<BoardVO> getBoardList(Pagination pagination) throws Exception {
		return sqlSession.selectList("com.kkomjirock.web.news.mappers.boardMapper.getBoardList");
	}


	@Override
	public BoardVO getBoardContent(int bid) throws Exception {
		return sqlSession.selectOne("com.kkomjirock.web.news.mappers.boardMapper.getBoardContent", bid);
	}


	@Override
	public int insertBoard(BoardVO boardVO) throws Exception {
		return sqlSession.insert("com.kkomjirock.web.news.mappers.boardMapper.insertBoard", boardVO);
	}


	@Override
	public int updateBoard(BoardVO boardVO) throws Exception {
		return sqlSession.update("com.kkomjirock.web.news.mappers.boardMapper.updateBoard", boardVO);
	}


	@Override
	public int deleteBoard(int bid) throws Exception {
		return sqlSession.insert("com.kkomjirock.web.news.mappers.boardMapper.deleteBoard", bid);
	}

	@Override
	public int updateViewCnt(int bid) throws Exception {
		return sqlSession.update("com.kkomjirock.web.news.mappers.boardMapper.updateViewCnt", bid);
	}

	@Override
	public int getBoardListCnt() throws Exception {
		return sqlSession.selectOne("com.kkomjirock.web.news.mappers.boardMapper.getBoardListCnt");

	}

	

}

