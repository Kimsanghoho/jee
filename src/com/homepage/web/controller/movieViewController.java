package com.homepage.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.startup.SetAllPropertiesRule;

/**
 * Servlet implementation class movieViewController
 */
@WebServlet({ "/movie/view.do", "/movie/viewreturn.do" })
public class movieViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//String id,pass;
		String msg;
		
		switch (request.getServletPath()) {
		case "/movie/viewreturn.do":
		
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("/views/movieView/movieView.jsp");
			dispatcher1.forward(request, response);
			break;
		case "/movie/view.do":
			msg = "극비수사"
					+ "<br/>"
					+ "극비수사 | The Classified File, 2015"
					+ "<br/>"
					+ "1978년 부산에서 일어난 실제 이야기"
					+ "<br/>"
					+ "보호하기 위해 극비 수사를 진행하기로 한다. 한편, 가족들은 유명한 점술집을 돌아다니며 아이의<br/>"
					+ "생사여부를 확인하지만 이미 아이가 죽었다는 절망적인 답만 듣게 되고, 마지막으로 도사 김중산을 찾아간다. <br/>"
					+ "“분명히 살아 있습니다”<br/>"
					+ "아이의 사주를 풀어보던 김도사는 아직 아이가 살아있고, 보름 째 되는 날 범인으로부터 첫 연락이 온다고<br/>"
					+ "확신한다. 보름째 되는 날, 김도사의 말대로 연락이 오고, 범인이 보낸 단서로 아이가 살아있음을 확신한<br/>"
					+ "공형사는 김도사의 말을 믿게 된다. 하지만 한 달이 지나도록 수사는 진전되지 않고, 모두가 아이의 생사 보다<br/>"
					+ "범인 찾기에 혈안이 된 상황 속에 공형사와 김도사 두 사람만이 아이를 살리기 위한 수사를 계속 진행하는데…<br/>"
					+ "“6월, 도사는 예언하고 형사는 움직인다”<br/>"
					+ "감독 / 출연곽경택 /김윤석,유해진,송영창,장영남제작국가 / 장르한국 / 드라마,범죄등급 <br/>/ 개봉일 15세이상 / 2015.06.18 상영시간 / 홈페이지107분 /<br/>";
					
			String url = " http://img.cgv.co.kr/Movie/Thumbnail/StillCut/000078/78276/78276128378_1024.jpg";
			String img = "http://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78276/78276_214.jpg";
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			request.setAttribute("img", img);
			
			RequestDispatcher dispatcher2 = request.getRequestDispatcher("/views/movieView/movieView2.jsp");
			dispatcher2.forward(request, response);
			break;
		default:
			break;
		}


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
