package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="reseller")
public class Reseller {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="shoes_sold")
	private Integer shoesSold;
	
	@Column(name="starting_budget")
	private Double startingBudget;
	
	@Column(name="comic_books_sold")
	private Integer comicBooksSold;
	
	@Column(name="hats_sold")
	private Integer hatsSold;
	
	@Column(name="profits_made")
	private Double profitsMade;
	
	@Column(name="seller_user_name")
	private String sellerUserName;
	
	@Column(name="profile_picture")
	private String profilePicture;
	
	public Reseller () {}

	public Reseller(int id, Integer shoesSold, Double startingBudget, Integer comicBooksSold, Integer hatsSold,
			Double profitsMade, String sellerUserName, String profilePicture) {
		super();
		this.id = id;
		this.shoesSold = shoesSold;
		this.startingBudget = startingBudget;
		this.comicBooksSold = comicBooksSold;
		this.hatsSold = hatsSold;
		this.profitsMade = profitsMade;
		this.sellerUserName = sellerUserName;
		this.profilePicture = profilePicture;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Integer getShoesSold() {
		return shoesSold;
	}

	public void setShoesSold(Integer shoesSold) {
		this.shoesSold = shoesSold;
	}

	public Double getStartingBudget() {
		return startingBudget;
	}

	public void setStartingBudget(Double startingBudget) {
		this.startingBudget = startingBudget;
	}

	public Integer getComicBooksSold() {
		return comicBooksSold;
	}

	public void setComicBooksSold(Integer comicBooksSold) {
		this.comicBooksSold = comicBooksSold;
	}

	public Integer getHatsSold() {
		return hatsSold;
	}

	public void setHatsSold(Integer hatsSold) {
		this.hatsSold = hatsSold;
	}

	public Double getProfitsMade() {
		return profitsMade;
	}

	public void setProfitsMade(Double profitsMade) {
		this.profitsMade = profitsMade;
	}

	public String getSellerUserName() {
		return sellerUserName;
	}

	public void setSellerUserName(String sellerUserName) {
		this.sellerUserName = sellerUserName;
	}

	public String getProfilePicture() {
		return profilePicture;
	}

	public void setProfilePicture(String profilePicture) {
		this.profilePicture = profilePicture;
	}

	@Override
	public String toString() {
		return "Reseller [id=" + id + ", shoesSold=" + shoesSold + ", startingBudget=" + startingBudget
				+ ", comicBooksSold=" + comicBooksSold + ", hatsSold=" + hatsSold + ", profitsMade=" + profitsMade
				+ ", sellerUserName=" + sellerUserName + ", profilePicture=" + profilePicture + "]";
	}	
}
