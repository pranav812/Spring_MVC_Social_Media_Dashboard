package com.Main.Social_Media_Dashboard.Model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;


@Entity
public class Users {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
     private int id;
     private String username;
     private String email;
     private String Password;
     private String dob;
     private String age;
     private String gender;
     private String bio;
     public String getbio() {
		return bio;
	}
	public void setbio(String bio) {
		this.bio = bio;
	}
	@OneToMany( cascade = CascadeType.ALL)
    private List<Posts> post;

     
	
	public List<Posts> getPost() {
		return post;
	}
	public void setPost(List<Posts> post) {
		this.post = post;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getusername() {
		return username;
	}
	public void setusername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Users(int id, String username, String email, String password, String dob, String age, String gender,String bio) {
		super();
		this.id = id;
		this.username = username;
		this.email = email;
		Password = password;
		this.dob = dob;
		this.age = age;
		this.gender = gender;
		this.bio=bio;
	}
	
	public Users() {
		super();
	}
		
	
	
	
     
     
}
