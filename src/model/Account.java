package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class Account implements Serializable {
	private int user_id;
	private String user_name;
	private String mail_address;
	private String password;
	private int free_coins;
	private int paid_coins;
	private Timestamp created;
	private Timestamp update;
	private String comment;
	private String icon;
	private int icon_margintop = 0;

	public Account(int id, String name, String mail, String password,
			int free, int paid, Timestamp created, Timestamp update,
			String comment, String icon){
		this.user_id = id;
		this.user_name = name;
		this.mail_address = mail;
		this.password = password;
		this.free_coins = free;
		this.paid_coins = paid;
		this.created = created;
		this.update = update;
		this.comment = comment;
		this.icon = icon;
	}

//getter---------------------------------------------
	public int getUser_id() {
		return user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public String getMail_address() {
		return mail_address;
	}

	public String getPassword() {
		return password;
	}

	public int getFree_coins() {
		return free_coins;
	}

	public int getPaid_coins() {
		return paid_coins;
	}

	public Timestamp getCreated() {
		return created;
	}

	public Timestamp getUpdate() {
		return update;
	}

	public String getComment() {
		return comment;
	}

	public String getIcon() {
		return icon;
	}

	public int getIconMargintop() {
		return icon_margintop;
	}

//setter------------------------------------------------------
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public void setMail_address(String mail_address) {
		this.mail_address = mail_address;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setFree_coins(int free_coins) {
		this.free_coins = free_coins;
	}

	public void setPaid_coins(int paid_coins) {
		this.paid_coins = paid_coins;
	}

	public void setCreated(Timestamp created) {
		this.created = created;
	}

	public void setUpdate(Timestamp update) {
		this.update = update;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public void setIconMargntop(int icon_margintop){
		this.icon_margintop = icon_margintop;
	}
}
