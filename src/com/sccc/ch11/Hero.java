package com.sccc.ch11;

public class Hero {

	private Integer id; //�������ݿ�ı��
	private String name; //���������
	private String nickName;//������������֮��
	private String desc;//Ӣ�۵�����
	private String avatar;//Ӣ�۵�ͷ���ַ
	private String image;//Ӣ�۵ı���ͼƬ
	
	public Hero() {
	}

	public Hero(int id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
