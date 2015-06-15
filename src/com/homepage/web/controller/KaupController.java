package com.homepage.web.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.beans.KaupVO;
import com.homepage.serviceimpls.KaupServiceImpl;
import com.homepage.web.services.HelloService;
import com.homepage.web.services.HelloServiceImpl;
import com.homepage.web.services.KaupInterface;

/**
 * Servlet implementation class KaupController
 * Date someday
 * story :키와 몸무게가 입력 되면 카우푸 지수와 메시지를 웹 브라우저에 랜더링 하는 역활
 * 
 */
@WebServlet("/model2/kaup.do")
public class KaupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		switch (request.getServletPath()) {
		case "/model2/kaup.do"	: goHello(request, response);		break;
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

	private void goHello(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException,
			ServletException, IOException {
		KaupInterface kaup = new KaupServiceImpl();
		KaupVO vo = new KaupVO();
		

		String heightparam = request.getParameter("height");
		request.setAttribute("height",  heightparam);
		
		String weightparam = request.getParameter("weight");
		request.setAttribute("weight",  weightparam);
		
		double height = Double.parseDouble(heightparam);
		double weight = Double.parseDouble(weightparam);

		int index  =kaup.getKaupIndex(height,weight);
		String msg = kaup.getResultMsg(index);
		request.setAttribute("msg",  msg);
		
		/*RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/kaup.jsp");
		dispatcher.forward(request, response);*/
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/kaup.jsp");
		dispatcher.forward(request, response);
	}

	
}
