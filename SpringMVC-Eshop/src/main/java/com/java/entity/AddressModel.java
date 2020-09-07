package com.java.entity;

import lombok.Data;
import org.hibernate.annotations.Type;

import javax.persistence.*;

@Data
@Entity
@Table(name = "addresses")
public class AddressModel implements Model {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long id;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;

	@Column(name = "line1")
	private String line1;

	@Column(name = "line2")
	private String line2;

	@Column(name = "postal_code")
	private String postalCode;

	@Column(name = "phone_number")
	private String phoneNumber;

	@Column(name = "email")
	private String email;

	@Column(name = "billing_address")
	@Type(type = "numeric_boolean")
	private boolean billingAddress;

	@Column(name = "shipping_address")
	@Type(type = "numeric_boolean")
	private boolean shippingAddress;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "customer_id")
	private CustomerModel customer;

}