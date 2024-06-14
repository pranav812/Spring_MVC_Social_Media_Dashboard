package com.Main.Social_Media_Dashboard.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.GeneratorType;
import org.springframework.web.multipart.MultipartFile;


@Entity
public class Posts {
    @Id 
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
    @Lob
    private byte[] image;
    	private  int  likes;
      private  int  Dislikes;
      private  String caption;
      
      @ManyToOne
      private Users user;
      
     
      
	public byte[] getImage() {
		
		
	
		return image;
	}

	public void setImage(byte[] imageData) {
		this.image = imageData;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public int getDislikes() {
		return Dislikes;
	}

	public void setDislikes(int dislikes) {
		Dislikes = dislikes;
	}

	public String getcaption() {
		return caption;
	}

	public void setcaption(String caption) {
		this.caption = caption;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	

	public int getUserId() {
		// TODO Auto-generated method stub
		return 0;
	}
      
      
}
