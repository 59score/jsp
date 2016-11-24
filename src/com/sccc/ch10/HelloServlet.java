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
	 * ����get���������ݹ���������
	 */
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) 
			throws ServletException, IOException {
		//��ת��
		response.sendRedirect("/jsp/index.jsp");
		
		//������ת��
		request.setAttribute("name", "hello"); // Ϊrequest������Ӳ���
        RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");    // ʹ��req�����ȡRequestDispatcher����
        dispatcher.forward(request, response);  
	}

	/**
	 *����Post���������ݹ���������
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
