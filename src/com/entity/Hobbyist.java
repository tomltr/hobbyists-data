package com.entity;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="hobbyist")
public class Hobbyist 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="email")
	private String email;
	
	@Column(name="hobby")
	private String hobby;
	
	@Column(name="favorite_site")
	private String favoriteSite;
	
	@Column(name="url")
	private String url;
	
	@Column(name="has_pet")
	private String hasPet;
	
	@Column(name="joined_date")
	private Date joinedDate;
	
	public Hobbyist()
	{
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getFavoriteSite() {
		return favoriteSite;
	}

	public void setFavoriteSite(String favoriteSite) {
		this.favoriteSite = favoriteSite;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getHasPet() {
		return hasPet;
	}

	public void setHasPet(String hasPet) {
		this.hasPet = hasPet;
	}

	public Date getJoinedDate() {
		return joinedDate;
	}

	public void setJoinedDate(Date joinedDate) {
		this.joinedDate = joinedDate;
	}
	

	@Override
	public String toString() {
		return "Hobby [id=" + id + ", name=" + name + ", email=" + email + ", hobby=" + hobby + ", favoriteSite="
				+ favoriteSite + ", url=" + url + ", hasPet=" + hasPet + ", joinedDate=" + joinedDate + "]";
	}
	
	
	
	
	
}
