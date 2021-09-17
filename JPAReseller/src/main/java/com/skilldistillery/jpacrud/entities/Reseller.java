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
	
	@Column(name="shoe_count")
	private int shoeCount;

	// new properties from table will be added here, update get set and to string
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getShoeCount() {
		return shoeCount;
	}

	public void setShoeCount(int shoeCount) {
		this.shoeCount = shoeCount;
	}

	@Override
	public String toString() {
		return "Reseller [id=" + id + ", shoeCount=" + shoeCount + "]";
	}
	
	
	
	
}
