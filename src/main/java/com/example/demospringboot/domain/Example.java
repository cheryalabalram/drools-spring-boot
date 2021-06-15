package com.example.demospringboot.domain;

import java.util.List;

public class Example {

	private String name;
	private String email;
	private String role;
	private String mobileNumber;
	private List<String> activities;

	public Example() {
	
	}
	
	public Example(String role) {
		this.role = role;
	}
	public List<String> getActivities() {
		return activities;
	}

	public void setActivities(List<String> activities) {
		this.activities = activities;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Example [name=" + name + ", email=" + email + ", role=" + role + ", mobileNumber=" + mobileNumber
				+ ", activities=" + activities + "]";
	}
	
}
