package com.homepage.web.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.beans.MemberBean;
import com.homepage.serviceimpls.MemberServiceImpl;
import com.homepage.web.services.MemberService;

/**
 * Servlet implementation class memberController
 * Story 로그인과 회원가입
 */
@WebServlet({"/model2/join.do","/model2/login.do","/member/searchIdForm.do","/member/searchPassForm.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberBean bean = new MemberBean();
	MemberService  service = new MemberServiceImpl();
	Map<String,Object> map = new HashMap<String,Object>();
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String path = request.getServletPath();
		switch (path) {
		case "/model2/searchIdForm.do" : 
			 RequestDispatcher dispatcher3 = request.getRequestDispatcher("/views/model2/searchIdForm.jsp");
			 dispatcher3.forward(request, response);
			break;
			
		case "/model2/searchPassForm.do" :
			RequestDispatcher dispatcher4 = request.getRequestDispatcher("/views/model2/searchPasssForm.jsp");
			dispatcher4.forward(request, response);
			break;
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		switch (request.getServletPath()) {
		case "/model2/join.do"			: 
			
			
			String name = request.getParameter("name");
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			String age = request.getParameter("age");
			String addr = request.getParameter("address");
			bean.setName(name);
			bean.setAddr(addr);
			bean.setAge(Integer.parseInt(age));
			bean.setPassword(password);
			bean.setId(id);
			
			service.join(id, password, name, Integer.parseInt(age), addr);
					
		
			
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/views/model2/memberForm.jsp");
			dispatcher.forward(request, response);
			
			break;
			
		case "/model2/login.do"			: 
			
			 name = request.getParameter("name");
			 id = request.getParameter("id");
			password = request.getParameter("password");
			age = request.getParameter("age");
			addr = request.getParameter("address");
			
			
     
			int idx = service.login(id, password);
			request.setAttribute("idx", idx);
			String msg = "";
			if(idx == 2){
				msg = "입력하신 ID 는 존재하지 않거나, 일치하지 않습니다. 다시 입력해 주세요.";
			}else{
				msg = "비번이 다릅니다.다시 입력하세요";
						
			}
			
			switch (idx) {
			case 1:
				request.setAttribute("id", bean.getId());
				request.setAttribute("name", bean.getName());
				request.setAttribute("password", bean.getPassword());
				request.setAttribute("age", bean.getAge());
				request.setAttribute("addr", bean.getAddr());
				
				 dispatcher = request
				.getRequestDispatcher("/views/model2/member.jsp");
				dispatcher.forward(request, response);
				break;

			default:
				request.setAttribute("idx", idx);
				request.setAttribute("msg", msg);
				 dispatcher = request
				.getRequestDispatcher("/views/model2/loginFail.jsp");
				dispatcher.forward(request, response);
				break;
			}
		
		}

	}

	
		
	

}
