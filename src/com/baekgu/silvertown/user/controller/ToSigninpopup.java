package com.baekgu.silvertown.user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signinpopup")
public class ToSigninpopup extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int postCode = 50; //Integer.parseInt(request.getParameter("postCode"));
		request.setAttribute("postCode", postCode);
		
		System.out.println("Login으로 가는 서블릿 도착");
		String path = "/WEB-INF/views/customer/main/signinpopup.jsp";
		request.getRequestDispatcher(path).forward(request, response);

	}

}
