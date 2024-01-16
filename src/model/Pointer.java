package model;

import java.io.Serializable;

public class Pointer implements Serializable {
	private int id;
	private int user_id;
	private String animal;
	private String animal_detail;
	private String file;
	private double lat;
	private double lng;
	private String type;

	public Pointer(int id,int user_id,String animal,String animal_detail,String file,double lat, double lng, String type){
		this.id = id;
		this.user_id = user_id;
		this.animal = animal;
		this.animal_detail = animal_detail;
		this.file = file;
		this.lat = lat;
		this.lng = lng;
		this.type = type;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getId() {
		return id;
	}

	public int getUser_id() {
		return user_id;
	}

	public String getAnimal() {
		return animal;
	}

	public String getAnimal_detail() {
		return animal_detail;
	}

	public String getFile() {
		return file;
	}

	public double getLat() {
		return lat;
	}

	public double getLng() {
		return lng;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public void setAnimal(String animal) {
		this.animal = animal;
	}

	public void setAnimal_detail(String animal_detail) {
		this.animal_detail = animal_detail;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public void setLat(double lat) {
		this.lat = lat;
	}

	public void setLng(double lng) {
		this.lng = lng;
	}

}
