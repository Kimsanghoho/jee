package com.homepage.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.services.HelloService;
import com.homepage.web.services.HelloServiceImpl;

/**
 * Servlet implementation class NowServlet
 */
@WebServlet({ "/name/hello.nhn", "/hi.do" })
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		

		switch (request.getServletPath()) {
		case "/hi.do"	: goHello(request, response);		break;
		case "/name/hello.nhn"			: goHi(request, response);			break;
		default					: System.out.println("노 페이지");	break;
		}

	}

	private void goHi(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String movieName = request.getParameter("movieName");
		String viewTime = request.getParameter("viewTime");
		System.out.println(viewTime);
		String poster = request.getParameter("poster");
		String availableAge = request.getParameter("availableAge");
		String seat = request.getParameter("seat");
		String movieOpen = request.getParameter("movieOpen");
		String movieClose = request.getParameter("movieClose");
		request.setAttribute("movieName", movieName);
		request.setAttribute("viewTime", viewTime);
		request.setAttribute("poster", poster);
		request.setAttribute("availableAge", availableAge);
		request.setAttribute("seat", seat);
		request.setAttribute("movieOpen", movieOpen);
		request.setAttribute("movieClose", movieClose);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("/views/movieInput/templateTest.jsp");
		dispatcher.forward(request, response);
	}

	private void goHello(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException,
			ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		HelloService hs = new HelloServiceImpl();
		String msg = hs.hi();

		String name = request.getParameter("name");
		request.setAttribute("name", msg + name);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("/views/model2/hello.jsp");
		dispatcher.forward(request, response);
	}

}
