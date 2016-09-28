package com.sccc;

public class UserBean {
	private String username;
	private String major;
	private String grade;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public UserBean() {
		super();
	}
	
	public UserBean(String username, String major, String grade) {
		super();
		this.username = username;
		this.major = major;
		this.grade = grade;
	}
	
	
	
}
