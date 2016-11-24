package com.sccc.ch10;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HelloServlet() {
    }

	/**
	 * 处理get方法所传递过来的数据
	 */
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) 
			throws ServletException, IOException {
		//简单转向
		response.sendRedirect("/jsp/index.jsp");
		
		//带数据转向
		request.setAttribute("name", "hello"); // 为request对象添加参数
        RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");    // 使用req对象获取RequestDispatcher对象
        dispatcher.forward(request, response);  
	}

	/**
	 *处理Post方法所传递过来的数据
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
