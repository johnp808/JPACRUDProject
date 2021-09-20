package com.skilldistillery.jpacrud.dao;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Reseller;

public interface ResellerDAO {

	Reseller findById(int resellerId);
	List<Reseller> findAll();
	Reseller updateReseller(int id, Reseller reseller);
	Reseller create(Reseller reseller);
	boolean destroy(int id);
	
}