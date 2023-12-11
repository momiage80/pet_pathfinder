package model;

public class Signup {
	private String name;
	private String password;
	private String mail;

	public Signup(String name, String password, String mail){
		this.name = name;
		this.password = password;
		this.mail = mail;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}

	public String getMail() {
		return mail;
	}

}
