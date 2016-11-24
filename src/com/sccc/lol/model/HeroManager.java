package com.sccc.lol.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HeroManager {

	private Hero hero;//保存从数据库内获取的一个英雄数据
	private List<Hero> heroes;//保存从数据库内获取的多个英雄数据
	
	private Connection conn; //数据库相关变量
	private Statement stmt;
	private ResultSet rs;
	private PreparedStatement ps;
	
	/*
	 * 根据传递过来的id查找一个英雄
	 */
	public Hero findOne(int id) {
		
		conn = getConnetion();
		
		try {
			
			stmt = conn.createStatement();
			rs=stmt.executeQuery("select * from hero where id = " + id);
			
			hero = new Hero(id);
			
			while(rs.next()){
				hero.setName(rs.getString("name"));
				hero.setNickName(rs.getString("nick_name"));
				hero.setImage(rs.getString("image"));
				hero.setAvatar(rs.getString("avatar"));
				hero.setDesc(rs.getString("description"));
			}
			
			rs.close();
			stmt.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		return hero;
	}
	
	/*
	 * 查找所有英雄
	 */
	public List<Hero> findAll() {
		conn = getConnetion();
		try {
			stmt = conn.createStatement();
			rs=stmt.executeQuery("select * from hero");
			
			heroes = new ArrayList<Hero>();
			
			while(rs.next()){
				hero = new Hero();
				hero.setId(rs.getInt("id"));
				hero.setName(rs.getString("name"));
				hero.setNickName(rs.getString("nick_name"));
				hero.setImage(rs.getString("image"));
				hero.setAvatar(rs.getString("avatar"));
				hero.setDesc(rs.getString("description"));
				heroes.add(hero);
			}
			
			rs.close();
			stmt.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return heroes;
	}
	
	/*
	 * 增加一个英雄
	 */
	public void add(Hero hero){
		
		String sql = "insert into hero (name, nick_name, avatar, image, description) values(?,?,?,?,?)";
		conn = getConnetion();
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, hero.getName());
			ps.setString(2, hero.getNickName());
			ps.setString(3, hero.getAvatar());
			ps.setString(4, hero.getName());
			ps.setString(5, hero.getDesc());
			
			ps.executeUpdate();
			
			ps.close();
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	/*
	 * 修改一个英雄
	 */
	public void modify(Hero hero) {
		
		String sql = "update hero set name = ?, nick_name = ?, avatoar = ?"
					+ "image = ?, description = ? where id = ?" ;
		
		conn = getConnetion();
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, hero.getName());
			ps.setString(2, hero.getNickName());
			ps.setString(3, hero.getAvatar());
			ps.setString(4, hero.getName());
			ps.setString(5, hero.getDesc());
			ps.setInt(6, hero.getId());
			
			ps.executeUpdate();
			
			ps.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	/*
	 * 获取数据库连接
	 */
	public Connection getConnetion(){
		
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/lol";
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
	}

}
