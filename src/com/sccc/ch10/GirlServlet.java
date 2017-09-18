package com.sccc.ch10;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.sccc.GirlFriend;

/**
 * Servlet implementation class GirlServlet
 */
@WebServlet("/Girl")
public class GirlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GirlServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<String> zhuangTai ;//�����������״̬
		HashMap<String, ArrayList<String>> tiMu; //�����������״̬��ѡ��

		//��ʼ��ֵ
		zhuangTai = new ArrayList<String>();
		tiMu = new HashMap<String, ArrayList<String>>();
		
		//������
		String qingKuang = "û�нӵ�Ů���ѵ绰";
		zhuangTai.add(qingKuang);
		
		//ѡ�����
		String xuanXiang1 = "���ֻ������� ";
		String xuanXiang2 = "���ڴ���Ϸ";
		String xuanXiang3 = "���ڸ�������";
		String xuanXiang4 = "���ڹ���";
		
		ArrayList<String> temp = new ArrayList<String>();
		//�����м����
		temp.add(xuanXiang1);
		temp.add(xuanXiang2);
		temp.add(xuanXiang3);
		temp.add(xuanXiang4);
		
		//�������ѡ�����hash��
		tiMu.put(qingKuang, temp);
		
		//TODO:�������ѡ�����ݣ�
		String zhTai = zhuangTai.get(0);//ȡ������
		ArrayList<String> xuanXiang = tiMu.get(zhTai);//��������ȡ��ѡ��
				
		request.setAttribute("zhuangTai", zhTai); // Ϊrequest������Ӳ���
		request.setAttribute("xuanXiang", xuanXiang); // Ϊrequest������Ӳ���
		
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ch10/status.jsp");    // ʹ��req�����ȡRequestDispatcher����
        dispatcher.forward(request, response);
        
        

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		GirlFriend gf = (GirlFriend)session.getAttribute("myGirlFriend");//��session�л��һ��Ů����
		ArrayList<String> zhuangTai ;//�����������״̬
		HashMap<String, ArrayList<String>> tiMu; //�����������״̬��ѡ��

		//��ʼ��ֵ
		zhuangTai = new ArrayList<String>();
		tiMu = new HashMap<String, ArrayList<String>>();

		
		String phone = request.getParameter("phone");//�Ӹղŵ�ҳ���еõ�ѡ������
		
		int shengQi = gf.getShengQi();//�������Ů���ѵ�����ֵ
		int ai = gf.getAi();//�������Ů���ѵİ�ֵ
		
		if(phone.equals("0")){
			shengQi = shengQi + 10; //���ѡ�����ֻ����� shengQi + 10
		}else if(phone.equals("1")){
			shengQi = shengQi + 30;//���ѡ���˴���Ϸ shengQi + 30
		}else if(phone.equals("2")){
			ai = ai + 20; //���ѡ���˸�������  ai + 30
		}else{
			ai = ai + 10;//���ѡ�����ڹ���  ai + 30
			shengQi = shengQi + 10; //shengQi + 10
		}
		
		gf.setShengQi(shengQi); //�����Ľ����ֵ��gf����
		gf.setAi(ai);
		
		String info = "";
		
		if(gf.getShengQi() > 20){ //�����ж�
			info = "��ϲ�㣬���Ѿ�go die��";
		}else{
			info = "������ҪС�ģ�Ů���ѵ�ŭ���Ѿ��ﵽ" + gf.getShengQi();
			
			if(gf.getAi() > 30){
				info = "��Ӵ������Ŷ��Ů���ѻ�����ϲ�������~";
			}
		}

		if(gf.getAi() > 100){
			info = "�������Բ�������ĵ���";
		}
		
		session.setAttribute("info", info);
		
		//��ʼ��ֵ
		zhuangTai = new ArrayList<String>();
		tiMu = new HashMap<String, ArrayList<String>>();
		
		//������
		String qingKuang = "û�нӵ�Ů���ѵ绰";
		zhuangTai.add(qingKuang);
		
		//ѡ�����
		String xuanXiang1 = "���ֻ������� ";
		String xuanXiang2 = "���ڴ���Ϸ";
		String xuanXiang3 = "���ڸ�������";
		String xuanXiang4 = "���ڹ���";
		
		ArrayList<String> temp = new ArrayList<String>();
		//�����м����
		temp.add(xuanXiang1);
		temp.add(xuanXiang2);
		temp.add(xuanXiang3);
		temp.add(xuanXiang4);
		
		//�������ѡ�����hash��
		tiMu.put(qingKuang, temp);
		
		//TODO:�������ѡ�����ݣ�
		String zhTai = zhuangTai.get(0);//ȡ������
		ArrayList<String> xuanXiang = tiMu.get(zhTai);//��������ȡ��ѡ��
				
		request.setAttribute("zhuangTai", zhTai); // Ϊrequest������Ӳ���
		request.setAttribute("xuanXiang", xuanXiang); // Ϊrequest������Ӳ���
		
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ch10/status.jsp");    // ʹ��req�����ȡRequestDispatcher����
        dispatcher.forward(request, response);  

	}

}
