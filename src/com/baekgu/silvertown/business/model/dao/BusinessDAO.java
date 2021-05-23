package com.baekgu.silvertown.business.model.dao;

import static com.baekgu.silvertown.common.jdbc.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import com.baekgu.silvertown.board.model.dto.PageInfoDTO;
import com.baekgu.silvertown.business.model.dto.BusinessDTO;
import com.baekgu.silvertown.business.model.dto.BusinessMemberDTO;
import com.baekgu.silvertown.business.model.dto.HrDTO;
import com.baekgu.silvertown.business.model.dto.PostInsertDTO;

import com.baekgu.silvertown.business.model.dto.BusinessPostDTO;
import com.baekgu.silvertown.business.model.dto.HrDTO;
import com.baekgu.silvertown.common.config.ConfigLocation;

public class BusinessDAO {
	
	private final Properties prop;
	
	public BusinessDAO() {
		prop = new Properties();
		
		try {
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "business/business-mapper.xml"));
			
		} catch(IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 기업 로그인 멤버 정보 가져오느 메소드
	 * @param con
	 * @param bMember
	 * @return
	 */
	public BusinessMemberDTO selectLoginMember(Connection con, BusinessMemberDTO bMember) {
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		BusinessMemberDTO businessLoginMember = null;
		
		String query = prop.getProperty("selectLoginBusinessMember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, bMember.getbId());
			rset = pstmt.executeQuery();
			
			businessLoginMember = new BusinessMemberDTO();
			
			if(rset.next()) {
				
				businessLoginMember.setbId(rset.getString("HR_ID"));
				businessLoginMember.setbPwd(rset.getString("HR_PWD"));
				businessLoginMember.setbName(rset.getString("HR_NAME"));
				businessLoginMember.setbPhone(rset.getString("HR_PHONE"));
				businessLoginMember.setbEmail(rset.getString("HR_EMAIL"));
				businessLoginMember.setbCode(rset.getInt("B_CODE"));
				businessLoginMember.setBlockStatus(rset.getInt("B_BLOCK"));
				businessLoginMember.setbReason(rset.getString("D_LIST_REASON"));
				businessLoginMember.setCName(rset.getString("B_NAME"));
				
				
			}	
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
		}
		
		return businessLoginMember;
	}

	/**
	 * 기업 회원가입 시 필요한 심사상태 테이블 값 insert하는 메소드
	 * @param con
	 * @return
	 */
	public int insertNewDecisionList(Connection con) {
		
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("insertDecisionList");
		
		try {
			pstmt = con.prepareStatement(query);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			
			close(pstmt);
		}
		
		return result;
	}
	
	public Map<Integer, Integer> selectTotalCount(Connection con, String loggedId) {
		
		PreparedStatement psmt = null;
		ResultSet rset = null;
		
		Map<Integer, Integer> counts = new HashMap<>();
		
		String query = prop.getProperty("selectTotalCount");
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, loggedId);
			
			rset = psmt.executeQuery();
			
			counts.put(1, 0); // 접수 - 코드 1
			counts.put(2, 0); // 승인 - 코드 2
			counts.put(3, 0); // 거절 - 코드 3
			
			while(rset.next()) {
				counts.put(rset.getInt("DECISION_CODE"), rset.getInt("COUNT"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(psmt);
		}
		
		return counts;
	}

	public List<?> selectPostList(Connection con, String loggedId, PageInfoDTO pageInfo) {

		PreparedStatement psmt = null;
		ResultSet rset = null;
		
		String query;
		
		if(pageInfo.getCategory() != null) {
			List<BusinessPostDTO> postList = null;
			
			/* 페이지 카테고리에 따른 분기처리 */
			boolean flag = true;
			if(pageInfo.getCategory().equals("전체")) {
				query = prop.getProperty("selectPostList");
			}else {
				query = prop.getProperty("selectPostListCategory");
				flag = false;
			}
			
			try {
				psmt = con.prepareStatement(query);
				
				if(flag) {
					psmt.setString(1, loggedId);
					psmt.setInt(2, pageInfo.getStartRow());
					psmt.setInt(3, pageInfo.getEndRow());
				}else {
					psmt.setString(1, loggedId);
					psmt.setString(2, pageInfo.getCategory());
					psmt.setInt(3, pageInfo.getStartRow());
					psmt.setInt(4, pageInfo.getEndRow());
				}
				
				rset = psmt.executeQuery();
				
				postList = new ArrayList<>();
				
				while(rset.next()) {
					BusinessPostDTO aPost = new BusinessPostDTO();
					
					aPost.setPostCode(rset.getInt("POST_CODE"));
					aPost.setDecisionStatus(rset.getString("DECISION_STATUS"));
					aPost.setPostDate(rset.getDate("POST_DATE"));
					aPost.setPostTitle(rset.getString("POST_TITLE"));
					aPost.setAdName(rset.getString("AD_NAME"));
					aPost.setPostStart(rset.getDate("POST_START"));
					aPost.setPostEnd(rset.getDate("POST_END"));
					aPost.setCountOfApplicants(rset.getInt("APPLICANTS"));
					
					postList.add(aPost);
					
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(psmt);
			}
			
			return postList;

			
		}else {
			List<BusinessDTO> postList = null;
			System.out.println("another DTO");
			
			
			
		}
		
		return null;
	}



	/**
	 * 기업 회원 가입시 필요한 기업정보 insert하는 메소드
	 * @param con
	 * @param business
	 * @return
	 */
	public int insertNewBusiness(Connection con, BusinessDTO business) {
		
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("insertBusiness");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, business.getbName());
			pstmt.setString(2, business.getbOwner());
			pstmt.setString(3, business.getbNumber());
			pstmt.setString(4, business.getbAddress());
			pstmt.setString(5, business.getbPhone());
			pstmt.setLong(6, business.getProfit());
			pstmt.setString(7, business.getbLogo());
			pstmt.setInt(8, business.getbCategoryCode());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close(pstmt);
		}

		
		return result;
	}

	public int insertNewHr(Connection con, HrDTO hr) {
		
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("insertHr");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, hr.getHrId());
			pstmt.setString(2, hr.getHrPwd());
			pstmt.setString(3, hr.getHrName());
			pstmt.setString(4, hr.getHrPhone());
			pstmt.setString(5, hr.getHrEmail());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();	
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/**
	 * 공고 등록 메소드
	 * @param con
	 * @param post
	 * @return
	 */
	public int insertNewPost(Connection con, PostInsertDTO post) {
		
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("insertnewpost");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, post.getPostTitle());
			pstmt.setString(2, post.getPostContent());
			pstmt.setInt(3, post.getPostTo());
			pstmt.setDate(4, post.getStartDate());
			pstmt.setDate(5, post.getEndDate());
			pstmt.setInt(6, post.getOnline());
			pstmt.setString(7, post.getAddress());
			pstmt.setString(8, post.getDays());
			pstmt.setLong(9, post.getPayment());
			pstmt.setString(10, post.getGender());
			pstmt.setString(11, post.getPriority());
			pstmt.setString(12, post.getBenefit());
			pstmt.setString(13, post.getFullTimeYn());
			pstmt.setString(14,  post.getName());
			pstmt.setString(15, post.getEmail());
			pstmt.setString(16, post.getPhone());
			pstmt.setInt(17, post.getExp());
			pstmt.setInt(18,  post.getJob());
			pstmt.setInt(19, post.getPeriodCode());
			pstmt.setInt(20, post.getHours());
			pstmt.setString(21, null);
			pstmt.setInt(22, post.getPay());
			pstmt.setInt(23, post.getAge());
			pstmt.setString(24, post.getHrId());
			pstmt.setInt(25, post.getDegree());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close(pstmt);
		}
		
		
		
		return result;
	}

	/**
	 * 심사 테이블에 새로운 공고 심사 추가 메소드
	 * @param con
	 * @return
	 */
	public int insertNewDecisionListpost(Connection con) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("insertDecisionListpost");
		
		try {
			pstmt = con.prepareStatement(query);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			
			close(pstmt);
		}
		
		return result;
	}

	public String chekId(Connection con, String hrId_1) {
		
		PreparedStatement pstmt = null;
		
		ResultSet  rset = null;
		
		String result = "";
		
		String query = prop.getProperty("checkDuplicationId");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, hrId_1);
			rset = pstmt.executeQuery();
			
			
			if(rset.next()) {
				
				int checkDuplId = rset.getInt("COUNT(HR_ID)");
				
				if(checkDuplId == 0) {
					
					result = "success";
				} else if(checkDuplId > 0){
					
					result = "fail";
				}
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
		}
		
		
		return result;
	}
}
