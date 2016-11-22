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
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ch10/guess.jsp");    // 使用req对象获取RequestDispatcher对象

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String guessStr = request.getParameter("guess");
		String randomStr = request.getParameter("random");
		
		int guess = Integer.parseInt(guessStr);
		int random = Integer.parseInt(randomStr);
		String info = "";
		
		if(guess < random){
			info = "你猜小啦~~";
		}else if(guess > random){
			info = "你猜大啦~~~";
		}else{
			info = "~~猜中啦~骚年~";
		}
		
		request.setAttribute("random", random); // 为request对象添加参数
		request.setAttribute("info", info); // 为request对象添加参数
		
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ch10/guess.jsp");    // 使用req对象获取RequestDispatcher对象
        dispatcher.forward(request, response);  
		
	}

}
