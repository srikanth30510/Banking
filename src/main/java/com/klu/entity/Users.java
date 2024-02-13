package com.klu.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Users {
	
	@Id
	
	public long id;
	public String name;
	public String password;

}
