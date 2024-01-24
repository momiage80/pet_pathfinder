package model;

import java.sql.Timestamp;

public class Transaction {
	private int id;
	private int user_id;
	private String type;
	private int amount;
	private int afterfreecoin;
	private int afterpaidcoin;
	private Timestamp date;
	private int receiver_id;

	public Transaction(int id, int user_id, String type, int amount, int afterfreecoin, int afterpaidcoin, Timestamp date, int receiver_id){
		this.id = id;
		this.user_id = user_id;
		this.type = type;
		this.amount = amount;
		this.afterfreecoin = afterfreecoin;
		this.afterpaidcoin = afterpaidcoin;
		this.date = date;
		this.receiver_id = receiver_id;
	}

	public int getId() {
		return id;
	}

	public int getUser_id() {
		return user_id;
	}

	public String getType() {
		return type;
	}

	public int getAmount() {
		return amount;
	}

	public int getAfterfreecoin() {
		return afterfreecoin;
	}

	public int getAfterpaidcoin() {
		return afterpaidcoin;
	}

	public Timestamp getDate() {
		return date;
	}

	public int getReceiver_id() {
		return receiver_id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public void setAfterfreecoin(int afterfreecoin) {
		this.afterfreecoin = afterfreecoin;
	}

	public void setAfterpaidcoin(int afterpaidcoin) {
		this.afterpaidcoin = afterpaidcoin;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public void setReceiver_id(int receiver_id) {
		this.receiver_id = receiver_id;
	}

}
