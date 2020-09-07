package com.java.javabean;

import java.io.Serializable;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class CustomerData implements Serializable {

    private static final long serialVersionUID = -4025697060784214985L;
    
    private String email;

    private String firstName;

    private String lastName;

    private String gender;

    private String phoneNumber;

}
