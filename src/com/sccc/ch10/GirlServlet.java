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
		ArrayList<String> zhuangTai ;//用来保存随机状态
		HashMap<String, ArrayList<String>> tiMu; //用来保存随机状态和选项

		//初始化值
		zhuangTai = new ArrayList<String>();
		tiMu = new HashMap<String, ArrayList<String>>();
		
		//情况添加
		String qingKuang = "没有接到女朋友电话";
		zhuangTai.add(qingKuang);
		
		//选项添加
		String xuanXiang1 = "我手机静音了 ";
		String xuanXiang2 = "我在打游戏";
		String xuanXiang3 = "我在给你买东西";
		String xuanXiang4 = "我在工作";
		
		ArrayList<String> temp = new ArrayList<String>();
		//生成中间变量
		temp.add(xuanXiang1);
		temp.add(xuanXiang2);
		temp.add(xuanXiang3);
		temp.add(xuanXiang4);
		
		//将情况和选项放入hash表
		tiMu.put(qingKuang, temp);
		
		//TODO:随机生成选择内容：
		String zhTai = zhuangTai.get(0);//取出问题
		ArrayList<String> xuanXiang = tiMu.get(zhTai);//根据问题取出选项
				
		request.setAttribute("zhuangTai", zhTai); // 为request对象添加参数
		request.setAttribute("xuanXiang", xuanXiang); // 为request对象添加参数
		
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ch10/status.jsp");    // 使用req对象获取RequestDispatcher对象
        dispatcher.forward(request, response);
        
        

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		GirlFriend gf = (GirlFriend)session.getAttribute("myGirlFriend");//从session中获得一个女朋友
		ArrayList<String> zhuangTai ;//用来保存随机状态
		HashMap<String, ArrayList<String>> tiMu; //用来保存随机状态和选项

		//初始化值
		zhuangTai = new ArrayList<String>();
		tiMu = new HashMap<String, ArrayList<String>>();

		
		String phone = request.getParameter("phone");//从刚才的页面中得到选项内容
		
		int shengQi = gf.getShengQi();//获得现在女朋友的生气值
		int ai = gf.getAi();//获得现在女朋友的爱值
		
		if(phone.equals("0")){
			shengQi = shengQi + 10; //如果选择了手机静音 shengQi + 10
		}else if(phone.equals("1")){
			shengQi = shengQi + 30;//如果选择了打游戏 shengQi + 30
		}else if(phone.equals("2")){
			ai = ai + 20; //如果选择了给她买东西  ai + 30
		}else{
			ai = ai + 10;//如果选择了在工作  ai + 30
			shengQi = shengQi + 10; //shengQi + 10
		}
		
		gf.setShengQi(shengQi); //把最后的结果赋值给gf变量
		gf.setAi(ai);
		
		String info = "";
		
		if(gf.getShengQi() > 20){ //做个判断
			info = "恭喜你，你已经go die了";
		}else{
			info = "少年你要小心，女朋友的怒气已经达到" + gf.getShengQi();
			
			if(gf.getAi() > 30){
				info = "哎哟，不错哦，女朋友还是蛮喜欢你的嘛~";
			}
		}

		if(gf.getAi() > 100){
			info = "不错，可以步入婚姻的殿堂";
		}
		
		session.setAttribute("info", info);
		
		//初始化值
		zhuangTai = new ArrayList<String>();
		tiMu = new HashMap<String, ArrayList<String>>();
		
		//情况添加
		String qingKuang = "没有接到女朋友电话";
		zhuangTai.add(qingKuang);
		
		//选项添加
		String xuanXiang1 = "我手机静音了 ";
		String xuanXiang2 = "我在打游戏";
		String xuanXiang3 = "我在给你买东西";
		String xuanXiang4 = "我在工作";
		
		ArrayList<String> temp = new ArrayList<String>();
		//生成中间变量
		temp.add(xuanXiang1);
		temp.add(xuanXiang2);
		temp.add(xuanXiang3);
		temp.add(xuanXiang4);
		
		//将情况和选项放入hash表
		tiMu.put(qingKuang, temp);
		
		//TODO:随机生成选择内容：
		String zhTai = zhuangTai.get(0);//取出问题
		ArrayList<String> xuanXiang = tiMu.get(zhTai);//根据问题取出选项
				
		request.setAttribute("zhuangTai", zhTai); // 为request对象添加参数
		request.setAttribute("xuanXiang", xuanXiang); // 为request对象添加参数
		
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ch10/status.jsp");    // 使用req对象获取RequestDispatcher对象
        dispatcher.forward(request, response);  

	}

}
