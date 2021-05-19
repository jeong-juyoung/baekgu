package com.baekgu.silvertown.admin.model.service;

import static com.baekgu.silvertown.common.jdbc.JDBCTemplate.close;
import static com.baekgu.silvertown.common.jdbc.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.baekgu.silvertown.admin.model.dao.AdminDAO;
import com.baekgu.silvertown.admin.model.dto.AdminDTO;
import com.baekgu.silvertown.board.model.dto.PageInfoDTO;

public class AdminService {
	private final AdminDAO adminDAO;
	
	public AdminService() {
		adminDAO = new AdminDAO();
	}

	/**
	 * 게시물 전체 조회용 메소드
	 * @param pageInfo
	 * @return
	 */
	public List<AdminDTO> searchAdminList(PageInfoDTO pageInfo) {
	
		Connection con = getConnection();
		
		List<AdminDTO> adminList = adminDAO.searchAdminList(con,pageInfo);
		
		close(con);
		
		return adminList;
	}
	/**
	 * 페이징 처리를 위한 전체 게시물 수 조회용 메소드
	 * @return
	 */
	public int selectTotalCount() {
		
		Connection con = getConnection();
		
		int totalCount = adminDAO.selectTotalCount(con);
		
		close(con);
		
		return totalCount;
	}
}
