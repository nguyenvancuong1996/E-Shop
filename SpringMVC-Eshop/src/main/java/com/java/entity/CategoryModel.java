package com.java.entity;

import java.util.List;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name = "categories")
public class CategoryModel implements Model {

	private static final long serialVersionUID = 7759756962622837604L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long id;

	@Column(name = "categoryName")
	private String categoryName;

	@OneToMany(mappedBy = "category", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<ProductModel> products;
}
