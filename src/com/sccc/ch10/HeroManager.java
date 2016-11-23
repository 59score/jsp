package com.sccc.ch10;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

public class HeroManager {

	private Hero hero;//保存从数据库内获取的一个英雄数据
	private List heroes;//保存从数据库内获取的多个英雄数据
	
	/*
	 * 根据传递过来的id查找一个英雄
	 */
	public Hero findOne(int id){

		return null;
	}
	
	/*
	 * 查找所有英雄
	 */
	public List findAll(){
		return null;
	}
	
	/*
	 * 增加一个英雄
	 */
	public void add(Hero hero){
		
	}
	
	/*
	 * 修改一个英雄
	 */
	public void modify(Hero hero){

	}
	
	/*
	 * 获取数据库连接
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
