package com.java.javabean;

import java.io.Serializable;

import lombok.Data;

@Data
public class ProductData implements Serializable {

	private static final long serialVersionUID = 4590886620146166305L;
	private long id;

	private String name;

	private String image;

	private double price;

	private String description;

}
