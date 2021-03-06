package com.baekgu.silvertown.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.baekgu.silvertown.user.model.dto.UserDTO;
import com.baekgu.silvertown.user.model.service.UserService;

@WebServlet("/loginCheck")
public class UserSignupPopupServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 로그인 정보 받아오기
		String userPhone = request.getParameter("userPhone");
		String userPwd = request.getParameter("userPwd");
		
		// 출력 테스트
		System.out.println("입력한 고객 전화번호 : " + userPhone);
		System.out.println("입력한 고객 비밀번호 : " + userPwd);
		
		// DTO타입의 변수로 값 넣어주기
		UserDTO requestUser = new UserDTO();
		requestUser.setUserPhone(userPhone);
		requestUser.setUserPwd(userPwd);
		
		/* Service와 연결하여 회원가입(비밀번호)과 차단여부 조회 */
		UserService userService = new UserService();
		UserDTO loginUser = userService.loginCheck(requestUser);
		
	    String errorPage = "";

	    /* 고객정보 유무로 분기 처리 */
	    try {
	    	
	    	if(loginUser != null) {
		    	
		    	/* 고객정보 일치시 */
		    	/* Service와 연결하여 로그인 정보 받아오기 */
			    UserService userServiceInfo = new UserService();
			    UserDTO loginUserInfo = userServiceInfo.loginInfo(requestUser);
		    
			    if(loginUserInfo.getUserBlock() != 1) {
					
					/* 로그인 성공시 */ 
					/* Session에 조회한 회원정보를 loginUserInfo로 넣어줌 */
					HttpSession session = request.getSession();
					session.setAttribute("loginUserInfo", loginUserInfo);
					
			    	String output = "로그인 성공";
					response.setContentType("text/plain; charset=utf-8");
					
					PrintWriter out = response.getWriter();
					
					out.print(output);
					out.flush();
					out.close();
					
			    } else {
			    	
			    	/* 차단된 유저일 경우 */
			    	String output = "고객님에 대한 신고가 접수되어 차단되었습니다.";
					response.setContentType("text/plain; charset=utf-8");
					
					PrintWriter out = response.getWriter();
					
					out.print(output);
					out.flush();
					out.close();
					
				    System.out.println("차단된 유저입니다.");
	
			    }
			    
	    	} else {
		    	
		    	/* 고객정보가 없을시 */				
	    		String output = "회원 정보를 찾을 수 없거나 차단 되었습니다. 다시 확인해주세요.";
				response.setContentType("text/plain; charset=utf-8");
				
				PrintWriter out = response.getWriter();
				
				out.print(output);
				out.flush();
				out.close();
				
	        	System.out.println("회원정보를 찾을 수 없습니다.");
		    }
	    	
	    } catch (Exception e) {
	    	
	    	e.printStackTrace();
	    	
	    	System.out.println("nullcheck");
	    }		

	}
	
}
