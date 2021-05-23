package com.baekgu.silvertown.admin.model.service;

import static com.baekgu.silvertown.common.jdbc.JDBCTemplate.close;
import static com.baekgu.silvertown.common.jdbc.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.baekgu.silvertown.admin.model.dao.CompanyDAO;
import com.baekgu.silvertown.admin.model.dto.CompanyDTO;
import com.baekgu.silvertown.board.model.dto.PageInfoDTO;

public class AdminCompanyService {
	
	private final CompanyDAO companyDAO;
	
	public AdminCompanyService() {
		companyDAO = new CompanyDAO();
	}

	/**
	 * 총 기업 카운트
	 * @return
	 */
	public int selectTotalCount() {
		
		Connection con = getConnection();
		
		int totalCount = companyDAO.selectTotalCount(con);
		
		close(con);
		
		
		
		
		return totalCount;
	}

	/**
	 * 기업 전체 리스트 조회용 메소드
	 * @param pageInfo
	 * @return
	 */
	public List<CompanyDTO> companyList(PageInfoDTO pageInfo) {
		
		Connection con = getConnection();
		
		List<CompanyDTO> companyList = companyDAO.selectCompanyList(con, pageInfo);
		
		close(con);
		
		
		
		return companyList;
	}

	/**
	 * 기업 상세보기 메소드
	 * @param no 
	 * @return
	 */
	public CompanyDTO selectCompanyDetail(int no) {
		
		Connection con = getConnection();
		
		CompanyDTO company = null;
		
		company = companyDAO.selectCompanyDetail(con, no);
		
		close(con);
		
		return company;
	}

	/**
	 * 회사에 관련된 담당자 리스트 조회
	 * @param no
	 * @return
	 */
	public List<CompanyDTO> selectHrList(int no) {
		
		Connection con = getConnection();
		
		List<CompanyDTO> hrList = companyDAO.selectHrList(con, no);
		
		close(con);
		
		return hrList;
	}

}




























