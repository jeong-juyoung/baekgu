package com.baekgu.silvertown.business.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.baekgu.silvertown.business.model.dto.BusinessMemberDTO;
import com.baekgu.silvertown.business.model.serivce.BusinessService;


@WebServlet("/business/editInfo")
public class EditBusinessInfoServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		BusinessMemberDTO loggedInUser = (BusinessMemberDTO)session.getAttribute("loginBusinessMember");
		
//		String str = String.valueOf(loggedInUser.getbNumber());
//		String  str2 = str.substring(0, 3) + "-" + str.substring(3, 5) + "-" + str.substring(6);
		
		String str2 = loggedInUser.getbNumber();
		
		request.setAttribute("str2", str2);
		System.out.println("EditBusinessInfoServlet 서블릿 도착");
		String path = "/WEB-INF/views/business/main/editBusinessInfo.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		System.out.println(name); 
		System.out.println(phone); 
		System.out.println(email); 
		
		HttpSession session = request.getSession();
		BusinessMemberDTO loggedInUser = (BusinessMemberDTO)session.getAttribute("loginBusinessMember");
		

		
		System.out.println(loggedInUser);
		
		BusinessMemberDTO member = new BusinessMemberDTO();
		
		
		member.setbId(loggedInUser.getbId());
		member.setbName(name);
		member.setbPhone(phone);
		member.setbEmail(email);
		member.setbNumber(loggedInUser.getbNumber());
		
		
		
		
		BusinessService service = new BusinessService();
		
		int result = service.updateHrInfo(member);
		
		//System.out.println(result);
		
		
		
		String path ="";
		if(result > 0) {
		

			request.setAttribute("message", "회원정보 수정이 완료 되었습니다.");
			response.sendRedirect(request.getContextPath() + "/business/main");
			
		} else {
			

			request.setAttribute("message", "회원정보 수정이 실패 하였습니다.");
			path = "/WEB-INF/views/business/main/editBusinessInfo.jsp";
			request.getRequestDispatcher(path).forward(request, response);
			
		}
	}

}
