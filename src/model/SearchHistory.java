package model;

import java.io.Serializable;

public class SearchHistory implements Serializable {
	private int id;
	private String animal;
	private String animal_detail;
	private String file;
	public SearchHistory(int id, String animal, String animal_detail, String file){
		this.id = id;
		this.animal = animal;
		this.animal_detail = animal_detail;
		this.file = file;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAnimal() {
		return animal;
	}
	public String getAnimal_detail() {
		return animal_detail;
	}
	public void setAnimal(String animal) {
		this.animal = animal;
	}
	public void setAnimal_detail(String animal_detail) {
		this.animal_detail = animal_detail;
	}

}
