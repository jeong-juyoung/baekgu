package com.baekgu.silvertown.business.model.serivce;

import static com.baekgu.silvertown.common.jdbc.JDBCTemplate.close;
import static com.baekgu.silvertown.common.jdbc.JDBCTemplate.commit;
import static com.baekgu.silvertown.common.jdbc.JDBCTemplate.getConnection;
import static com.baekgu.silvertown.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.baekgu.silvertown.board.model.dto.PageInfoDTO;
import com.baekgu.silvertown.business.model.dao.BusinessDAO;
import com.baekgu.silvertown.business.model.dto.BusinessApplicationDTO;
import com.baekgu.silvertown.business.model.dto.BusinessDTO;
import com.baekgu.silvertown.business.model.dto.BusinessMemberDTO;
import com.baekgu.silvertown.business.model.dto.BusinessReportDTO;
import com.baekgu.silvertown.business.model.dto.BusinessReportListDTO;
import com.baekgu.silvertown.business.model.dto.HrDTO;
import com.baekgu.silvertown.business.model.dto.HrNumDTO;
import com.baekgu.silvertown.business.model.dto.MainDTO;
import com.baekgu.silvertown.business.model.dto.PaymentDTO;
import com.baekgu.silvertown.business.model.dto.PaymentDetailDTO;
import com.baekgu.silvertown.business.model.dto.PostInsertDTO;
import com.baekgu.silvertown.user.model.dto.ReportPostDTO;
import com.baekgu.silvertown.user.model.dto.UserDTO;


public class BusinessService {

	private final BusinessDAO businessDAO;
	
	public BusinessService() {
		businessDAO = new BusinessDAO(); 
		
	}

	/**
	 * 기업 로그인
	 * @param bMember
	 * @return
	 */
	public BusinessMemberDTO loginCheck(BusinessMemberDTO bMember) {
		
		Connection con = getConnection();
		
		BusinessMemberDTO loginBusinessMember = null;
		
		loginBusinessMember = businessDAO.selectLoginMember(con, bMember);

		close(con);
		
		return loginBusinessMember;
	}

	/**
	 * 기업 회원가입 
	 * @param business
	 * @param hr
	 * @return
	 */
//	public int insertNewBusiness(BusinessDTO business, HrDTO hr) {
//		
//		Connection con = getConnection();
//		
//		int decisionList = businessDAO.insertNewDecisionList(con);
//		int insertBusiness = 0;
//		int insertHr = 0;
//		
//		
//		/* 심사상태 테이블 insert 성공시 기업정보 insert*/
//		if(decisionList > 0) {
//				commit(con);
//			    insertBusiness = businessDAO.insertNewBusiness(con, business);
//				/* 기업정보 테이블 insert 성공시 담당자 insert */
//				if(insertBusiness > 0 ) {
//					commit(con);
//					 insertHr = businessDAO.insertNewHr(con, hr);
//					
//					if(insertHr > 0) {
//						commit(con);
//						System.out.println("기업 회원가입 성공!");
//					}
//				} else {
//					
//					System.out.println("기업정보 insert 실패");
//				}
//				
//		} else {
//			
//			System.out.println(" 심사상태 insert 실패");
//		}
//		
//		close(con);
//		
//		
//		return decisionList+insertBusiness+insertHr;
//
//	}
	public Map<Integer, Integer> selectTotalCount(String loggedId) {
		
		Connection con = getConnection();
		
		Map<Integer, Integer> counts = businessDAO.selectTotalCount(con, loggedId);
		
		close(con);
		
		return counts;
		
	}

	public List<?> selectPostList(String loggedId, PageInfoDTO pageInfo) {

		Connection con = getConnection();
		
		List<?> postList = businessDAO.selectPostList(con, loggedId, pageInfo);
		
		close(con);
		
		return postList;
	}

//	public int insertNewPost(PostInsertDTO post) {
//		
//		Connection con = getConnection();
//		
//		int decisionList = businessDAO.insertNewDecisionListpost(con);
//		int insertPost = 0;
//		
//		if(decisionList > 0) {
//			commit(con);
//			
//			insertPost = businessDAO.insertNewPost(con, post);
//			commit(con);
//		}
//		
//		
//		close(con);
//		return insertPost + insertPost;
//	}

	public String chekId(String hrId_1) {
		
		Connection con = getConnection();
		
		String result = businessDAO.chekId(con, hrId_1);
		
		close(con);
		
		
		return result;
	}


	public int updateHrInfo(BusinessMemberDTO member) {
		
		Connection con = getConnection();
		
		System.out.println(member.getbName());
		
		int result = businessDAO.updateHrInfo(con, member);
		
		if(result > 0) {
			
			System.out.println("회원 정보 수정 완료");
			commit(con);
		} else {
			System.out.println("회원 정보 수정 실패");
			rollback(con);
			
		}
		
		
		
		close(con);
		
		
		return result;
	}


	public List<PaymentDTO> selectAllpayList(String hrId, PageInfoDTO pageInfo) {
		
		Connection con = getConnection();
		
		List<PaymentDTO> payList = new ArrayList<PaymentDTO>();
		
		payList = businessDAO.selectAllpayList(con, hrId, pageInfo);
		
		close(con);
		
		return payList;
	}


	public PaymentDetailDTO selectPaymentDetail(String getbId, int postAdCode) {
		
		Connection con = getConnection();
		
		PaymentDetailDTO paymentDetail = businessDAO.selectPaymentDetail(con, getbId, postAdCode);
		
		
		close(con);
		return paymentDetail;
	}

	public Map<Integer, Integer> selectpayCount(String getbId) {
		
	Connection con = getConnection();
		
		Map<Integer, Integer> counts = businessDAO.selectPayCount(con, getbId);
		
		close(con);
		
		return counts;
	}
	public int selectTotalApplicants(String loggedId, int postCode) {
		
		Connection con = getConnection();
		
		int count = businessDAO.selectTotalApplicants(con, loggedId, postCode);
		
		close(con);
		
		return count;
	}

	public List<BusinessApplicationDTO> selectApplicationList(String loggedId, int postCode, PageInfoDTO pageInfo) {

		Connection con = getConnection();
		
		List<BusinessApplicationDTO> applicationList = businessDAO.selectApplicationList(con, postCode ,loggedId, pageInfo);
		
		close(con);
		
		return applicationList;
	}

	public int updateResumeRead(String loggedId, int applyCode) {

		Connection con = getConnection();
		
		int result = businessDAO.updateResumeRead(con, loggedId, applyCode);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public UserDTO lookResume(int applyCode) {

		Connection con = getConnection();
		
		UserDTO userInfo = businessDAO.lookResume(con, applyCode);
		
		close(con);
		
		return userInfo;
	}

	public int updateApplyYN(int applyCode, String decision) {

		Connection con = getConnection();
		
		int result = businessDAO.updateApplyYN(con, applyCode, decision);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public int insertDecisionList(int i, List<Object> containDTO) {
		
		Connection con = getConnection();
		
		int firstResult = businessDAO.insertDecisionList(con, i);
		int secondResult = 0;
		
		if(firstResult > 0) {
			
			commit(con);
			
			// 심사내역에 등록한 후, 분기문 매개변수 i를 가지고 판단.
			// 1일 때 - 기업에서 지원자 신고하는 경우
			// 2일 때 - 고객이 기업의 공고를 신고하는 경우
			// 3일 때 - 기업에서 가입신청하는 경우
			// 4일 때 - 기업에서 공고등록을 하는 경우 
			switch(i) {
				case 1:
					// 지원자 신고 등록에 대한 정보가 있는 DTO로 다운캐스팅(명시적 형변환) 후 진행
					BusinessReportDTO reportDTO = (BusinessReportDTO)containDTO.get(0);
					secondResult = businessDAO.insertApplicantReport(con, reportDTO);
					break;
				
				case 3:
					BusinessDTO business = (BusinessDTO)containDTO.get(0);
					secondResult = businessDAO.insertNewBusiness(con, business);
					System.out.println(" 기업 추가 :" + secondResult);
					if(secondResult > 0) {
						
						HrDTO hr = (HrDTO)containDTO.get(1);
						int thirdResult = businessDAO.insertNewHr(con, hr);
						System.out.println("담장자 회원가입 : " + thirdResult);
					}
					break;
				case 4:
					PostInsertDTO post = (PostInsertDTO)containDTO.get(0);
					secondResult = businessDAO.insertNewPost(con, post);
					System.out.println("공고가 올라갔을까? : " + secondResult);
					break;
				}
		}else {
			rollback(con);
		}
		
		if(secondResult > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return secondResult;
	}

	public String selectUsername(int resumeCode) {

		Connection con = getConnection();
		
		String userName = businessDAO.selectUsername(con, resumeCode);
		
		close(con);
		
		return userName;
	}

	public int selectReportCount(String loggedId) {
		
		Connection con = getConnection();
		
		int result = businessDAO.selectReportCount(con, loggedId);
		
		close(con);
		
		return result;
	}

	public List<BusinessReportListDTO> selectReportList(String loggedId, PageInfoDTO pageInfo) {

		Connection con = getConnection();
		
		List<BusinessReportListDTO> reportList = businessDAO.selectReportList(con, loggedId, pageInfo);
		
		close(con);
		
		return reportList;
	}
	
	public int updatePaymentList(int success, int postAdCode) {
		
		Connection con = getConnection();
		
		int result = businessDAO.updatePaymentList(con, success, postAdCode);
		
		
		if(result > 0 ) {
			
			commit(con);
		} else {
			
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public MainDTO selectBusinessInfo(String bId) {
		
		Connection con = getConnection();
		
		MainDTO main = businessDAO.selectBusinessInfo(con, bId);
		
		close(con);
		
		return main;
	}

	/**
	 * hr 번호 확인을 위한 번호 select method
	 * @param bId
	 * @return
	 */
	public HrNumDTO selectHrNum(String bId) {
		
		Connection con = getConnection();
		
		HrNumDTO hNum = businessDAO.selecthNum(con, bId);
		
		close(con);
		return hNum;
	}

	/**
	 * 생성된 인증번호를 update 하는 메소드
	 * @param infoWIthVNum
	 * @return
	 */
	public int updateVerifiedNum(HrNumDTO infoWIthVNum) {
		
		Connection con = getConnection();
		
		int result = businessDAO.updateVerifiedNum(con, infoWIthVNum);
		
		System.out.println("DAO 가기전에 인증 번호 확인 : " +infoWIthVNum.getVarifiedNum());
		
		if(result > 0) {
			System.out.println("문자인증 서비스 업데이트 성공");
			commit(con);
			
			
		} else {
			
			System.out.println("문자인증 서비스 업데이트실패");
			rollback(con);
			
		}
		
		close(con);
		
		return result;
	}

	public String selectVerifiedNum(String userId) {
		
		Connection con = getConnection();
		
		String numStr = businessDAO.selectVerifiedNum(con, userId);
		
		close(con);
		
		return numStr;
	}

	public int updatePwd(String enterPwd, String hrId) {
		
		Connection con = getConnection();
		
		int result = businessDAO.updatePwd(con, enterPwd, hrId);
		
		if(result > 0) {
			
			commit(con);
			System.out.println("비밀번호 업데이트 성공 : " + result);
		} else {
			
			rollback(con);
			System.out.println("비밀번호 업데이트 실패 : " + result);
		}
		
		close(con);
		
		return result;
	}


	public String selectDecisionCode(String bId) {
		
		Connection con = getConnection();
		
		String decisionCode = businessDAO.selectDecisionCode(con, bId);
		
		close(con);
		return decisionCode;
	}

	public String selectId(String bId) {
		
		Connection con = getConnection();
		
		String checkId = businessDAO.selectId(con, bId);
		
		close(con);
		return checkId;
	}
	public int insertPostAdPayment(PaymentDTO postAd) {

		Connection con = getConnection();
		
		int result = businessDAO.insertPostAdPayment(con, postAd);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return result;

	}





	

	
}
