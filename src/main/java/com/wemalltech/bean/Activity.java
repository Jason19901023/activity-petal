package com.wemalltech.bean;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class Activity {
	@Id
	@GeneratedValue(generator = "JDBC")
	private int autoid;
	
	private String name;

	public int getAutoid() {
		return autoid;
	}

	public void setAutoid(int autoid) {
		this.autoid = autoid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
