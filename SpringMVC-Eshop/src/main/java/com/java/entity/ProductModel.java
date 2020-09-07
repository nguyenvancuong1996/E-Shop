package com.java.entity;

import lombok.Data;

import javax.persistence.*;


@Data
@Entity
@Table(name = "products")
public class ProductModel implements Model {

	private static final long serialVersionUID = -5184806487285857912L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long id;

	@Column(name = "productName")
	private String productName;

	@Column(name = "productDescription")
	private String productDescription	;

	@Column(name = "productImage")
	private String productImage;

	@Column(name = "productPrice")
	private double productPrice;	

	@ManyToOne
	@JoinColumn(name = "category_id")
	private CategoryModel category;
}
