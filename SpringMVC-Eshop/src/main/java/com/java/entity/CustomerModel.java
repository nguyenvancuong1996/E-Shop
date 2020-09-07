package com.java.entity;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.Collection;

@Data
@Entity
@Table(name = "customers")
public class CustomerModel extends UserModel {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name = "first_name")
	private String firstName;

	@NotEmpty
	@Pattern(regexp = "[^0-9]+")
	@Size(min = 6, max = 20)
	@Column(name = "last_name")
	private String lastName;

	@Column(name = "gender", columnDefinition = "char(1)")
	private String gender;

	@NotNull
	@Min(value = 1000000000)
	@Column(name = "phone_number")
	private String phoneNumber;

	// TODO: Change fetch type to lazy
	@OneToMany(mappedBy = "customer", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Collection<AddressModel> addresses;

}
