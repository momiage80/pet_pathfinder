package model;

import java.io.Serializable;

public class Prize implements Serializable {
	private int id;
	private String name;
	private String detail;
	private int cost;
	private String path;
	private String kinds;

	public Prize(int id, String name, String detail, int cost, String path, String kinds){
		this.id = id;
		this.name = name;
		this.detail = detail;
		this.cost = cost;
		this.path = path;
		this.kinds = kinds;
	}

	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getDetaile() {
		return detail;
	}
	public int getCost() {
		return cost;
	}
	public String getPath() {
		return path;
	}
	public String getKinds() {
		return kinds;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setDetaile(String detail) {
		this.detail = detail;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public void setKinds(String kinds){
		this.kinds = kinds;
	}
}
