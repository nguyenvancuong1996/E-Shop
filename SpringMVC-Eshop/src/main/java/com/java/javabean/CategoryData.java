package com.java.javabean;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class CategoryData implements Serializable {

	private static final long serialVersionUID = -1303298934498830788L;

	private String id;

	private String name;
	
	 private List<CategoryData> categories;

}
