package com.sccc.ch10;

public class Hero {

	private Integer id; //存入数据库的编号
	private String name; //名字如盖伦
	private String nick_name;//别称如德玛西亚之力
	private String desc;//英雄的描述
	private String vatar;//英雄的头像地址
	private String image;//英雄的背景图片
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNick_name() {
		return nick_name;
	}
	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getVatar() {
		return vatar;
	}
	public void setVatar(String vatar) {
		this.vatar = vatar;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
}
