package com.baekgu.silvertown.user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user/logout")
public class ToSignoutServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("로그아웃 후 시작 페이지로 가는 서블릿 도착");
		// 로그아웃 = session을 종료 처리하고 redirect로 메인 페이지 가기
		request.getSession().invalidate();
		response.sendRedirect(request.getContextPath()); // ContectPath는 /baekgu
		
	}

}