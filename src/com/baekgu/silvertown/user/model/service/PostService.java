package com.baekgu.silvertown.user.model.service;

import java.sql.Connection;

import com.baekgu.silvertown.user.model.dao.PostDAO;
import com.baekgu.silvertown.user.model.dto.PostDTO;
import static com.baekgu.silvertown.common.jdbc.JDBCTemplate.getConnection;
import static com.baekgu.silvertown.common.jdbc.JDBCTemplate.close;
import static com.baekgu.silvertown.common.jdbc.JDBCTemplate.commit;
import static com.baekgu.silvertown.common.jdbc.JDBCTemplate.rollback;

public class PostService {
	
	private final PostDAO postDAO;
	
	public PostService() {
		postDAO = new PostDAO();
	}

	/**
	 * 공고 조회용 메소드
	 * @param postCode
	 * @return postInfo
	 */
	public PostDTO getPostInfo(int postCode) {
		
		Connection con = getConnection();
		PostDTO postInfo = null;
		
		postInfo = postDAO.selectPostInfo(con, postCode);
		System.out.println("service의 postInfo 값 : " + postInfo);
		
		return postInfo;
	}

	public PostDTO selectResume(PostDTO userPostCode) {
		
		Connection con = getConnection();
		PostDTO selectResume = null;
		
		selectResume = postDAO.selectResume(con, userPostCode);
		
		return selectResume;
	}

	public int insertApply(PostDTO applyInfo) {
		
		Connection con = getConnection();
		
		int newApply = postDAO.insertApply(con, applyInfo);
		
		// transaction 처리하기
		if(newApply > 0) {
			commit(con);
		} else {
			rollback(con);
		}

		return newApply;
	}
	
}
