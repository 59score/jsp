package com.sccc.ch10;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

public class HeroManager {

	private Hero hero;//��������ݿ��ڻ�ȡ��һ��Ӣ������
	private List heroes;//��������ݿ��ڻ�ȡ�Ķ��Ӣ������
	
	/*
	 * ���ݴ��ݹ�����id����һ��Ӣ��
	 */
	public Hero findOne(int id){

		return null;
	}
	
	/*
	 * ��������Ӣ��
	 */
	public List findAll(){
		return null;
	}
	
	/*
	 * ����һ��Ӣ��
	 */
	public void add(Hero hero){
		
	}
	
	/*
	 * �޸�һ��Ӣ��
	 */
	public void modify(Hero hero){

	}
	
	/*
	 * ��ȡ���ݿ�����
	 */
	public Connection getConnetion(){
		
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/software";
		String user = "root";
		String password = "";
		
		try {
			Class.forName(driverName);
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	public HeroManager() {
		// TODO Auto-generated constructor stub
	}

}
