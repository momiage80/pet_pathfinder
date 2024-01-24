package model;

import java.sql.Timestamp;

public class Inquiry {
	private int id;
	private int user_id;
	private String content;
	private Timestamp date;
	private boolean flag;

	public Inquiry(int id, int user_id, String content, Timestamp date, boolean flag){
		this.id = id;
		this.user_id = user_id;
		this.content = content;
		this.date = date;
		this.flag = flag;
	}

	public int getId() {
		return id;
	}

	public int getUser_id() {
		return user_id;
	}

	public String getContent() {
		return content;
	}

	public Timestamp getDate() {
		return date;
	}

	public boolean isFlag() {
		return flag;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}

}
