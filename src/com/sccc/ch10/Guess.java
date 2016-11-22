package com.sccc.ch10;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Guess
 */
//@WebServlet("/Guess")
public class Guess extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Guess() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ch10/guess.jsp");    // ʹ��req�����ȡRequestDispatcher����

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String guessStr = request.getParameter("guess");
		String randomStr = request.getParameter("random");
		
		int guess = Integer.parseInt(guessStr);
		int random = Integer.parseInt(randomStr);
		String info = "";
		
		if(guess < random){
			info = "���С��~~";
		}else if(guess > random){
			info = "��´���~~~";
		}else{
			info = "~~������~ɧ��~";
		}
		
		request.setAttribute("random", random); // Ϊrequest������Ӳ���
		request.setAttribute("info", info); // Ϊrequest������Ӳ���
		
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ch10/guess.jsp");    // ʹ��req�����ȡRequestDispatcher����
        dispatcher.forward(request, response);  
		
	}

}
