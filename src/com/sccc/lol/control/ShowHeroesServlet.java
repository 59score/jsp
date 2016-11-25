package com.sccc.lol.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sccc.lol.model.Hero;
import com.sccc.lol.model.HeroManager;

public class ShowHeroesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ShowHeroesServlet() {
    }

	/**
	 * ��ʾȫ����Ӣ��.
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HeroManager manager = new HeroManager();
		List<Hero> heroes = manager.findAll();
		
		request.setAttribute("heroes", heroes);
		RequestDispatcher dis = request.getRequestDispatcher("heroes.jsp");
		dis.forward(request, response);
	}

}