package com.sccc.ch11;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sccc.ch11.Hero;
import com.sccc.ch11.HeroManager;

public class HeroesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HeroesServlet() {
    }

	/**
	 * ��ʾȫ����Ӣ��.
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HeroManager manager = new HeroManager();//����һ��manager����
		List<Hero> heroes = manager.findAll();//�ҵ����е�Ӣ��
		
		request.setAttribute("heroes", heroes);//�����е�Ӣ�۷ŵ�request��
		
		RequestDispatcher dis = request.getRequestDispatcher("/ch11/heroes.jsp");
		dis.forward(request, response);//�������е�Ӣ��ת��
		
	}

}
