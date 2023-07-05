package com.ezen.FSB.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.FSB.dto.GameDTO;
import com.ezen.FSB.dto.ReviewDTO;
import com.ezen.FSB.dto.TagDTO;

@Service
public class GameMapper {
	
	@Autowired
	private SqlSession sqlSession;
// 보드게임
	// 검색으로 찾기
	public List<GameDTO> findGame(String searchString) {
		return sqlSession.selectList("findGame", searchString);
	}
	
	// 상세보기로 찾기(테마별)
	public List<GameDTO> checkListGame1(int tag) {
		return sqlSession.selectList("checkListGame1", tag);
	}
	
	// 상세보기로 찾기(인원별)
	public List<GameDTO> checkListGame2 (int game_player) {
		return sqlSession.selectList("checkListGame2", game_player);
	}
	
	// 상세보기로 찾기(별점별)
	public List<GameDTO> checkListGame3(int game_level) {
		return sqlSession.selectList("checkListGame3", game_level);
	}
	
	// 게임 리스트
	public List<GameDTO> listGame() {
		return sqlSession.selectList("listGame");
	}
	
	// 이름 순으로 정렬
	public List<GameDTO> sortGame1(String sort) {
		return sqlSession.selectList("sortGame1", sort);
	}
	
	// 인원 순으로 정렬
	public List<GameDTO> sortGame2(String sort) {
		return sqlSession.selectList("sortGame2", sort);
	}
	
	// 별점 순으로 정렬
	public List<GameDTO> sortGame3(String sort) {
		return sqlSession.selectList("sortGame3", sort);
	}
	
	// 좋아요 순으로 정렬
	public List<GameDTO> sortGame4(String sort) {
		return sqlSession.selectList("sortGame4", sort);
	}
	
	// 게임 상세설명
	public GameDTO getGame(int game_num) {
		return sqlSession.selectOne("getGame", game_num);
	}
	
//	// 게임 상세설명의 별점 평균(한줄평 개수)
//	public int getReviewCount(int game_num) {
//		return sqlSession.selectOne("getReviewCount", game_num);
//	}
//	
//	// 게임 상세설명의 별점 평균(한줄평 데이터)
//	public int getReviewData(List<HashMap> params) {
//		return sqlSession.selectOne("getReviewData", params);
//	}
	
	// 게임 상세설명의 별점 평균
	public int reviewAvg(int game_num) {
		return sqlSession.selectOne("reviewAvg", game_num);
	}
	
	// 게임 상세보기 시 뜨는 태그
	public List<TagDTO> gameTag(int game_num) {
		return sqlSession.selectList("gameTag", game_num);
	}

// 한줄평
	//	한줄평 등록
	public int insertReview(ReviewDTO dto) {
		return sqlSession.insert("insertReview", dto);
	}
	
	// 한줄평 리스트
	public List<ReviewDTO> listReview(java.util.Map<String, Integer> params) {
		return sqlSession.selectList("listReview", params);
	}
	
	// 페이지 번호를 위한 getCount
	public int getCount(int game_num) {
		return sqlSession.selectOne("getCount", game_num);
	}
	
	// 한줄평 삭제
	public int deleteReview(int review_num) {
		return sqlSession.delete("deleteReview", review_num);
	}
	
	// 한줄평 신고를 위한 메소드
	public int updateReviewReport(ReviewDTO dto) {
		return sqlSession.update("updateReviewReport", dto);
	}
}
