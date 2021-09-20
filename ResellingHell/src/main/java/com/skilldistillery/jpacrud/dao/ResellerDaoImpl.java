package com.skilldistillery.jpacrud.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Reseller;

@Service
@Transactional
public class ResellerDaoImpl implements ResellerDAO {


	@PersistenceContext
	private EntityManager em;
	
	
	@Override
	public Reseller findById(int resellerId) {
		return em.find(Reseller.class, resellerId);
	}

	@Override
	public List<Reseller> findAll() {
		String jpql = "SELECT r FROM Reseller r";
		List<Reseller> reseller = em.createQuery(jpql, Reseller.class).getResultList();
		return reseller;
	}

	@Override
	public Reseller create(Reseller reseller) {
		em.persist(reseller);
		em.flush();
		em.close();
		return reseller;
	}

	@Override
	public Reseller updateReseller(int id, Reseller reseller) {
			    Reseller dbReseller = em.find(Reseller.class, id);
			    dbReseller.setSellerUserName(reseller.getSellerUserName());
			    dbReseller.setProfilePicture(reseller.getProfilePicture());
			    dbReseller.setStartingBudget(reseller.getStartingBudget());
			    dbReseller.setShoesSold(reseller.getShoesSold());
			    dbReseller.setComicBooksSold(reseller.getComicBooksSold());
			    dbReseller.setHatsSold(reseller.getHatsSold());
			    dbReseller.setProfitsMade(reseller.getProfitsMade());
			   
			    em.flush();
			    em.close();
		return dbReseller;
	}

	@Override
	public boolean destroy(int id) {
		boolean successfullyRemovedReseller = false;
		Reseller reseller = em.find(Reseller.class, id);
		
		if(reseller != null) {		
			em.remove(reseller); // performs the delete on the managed entity
			successfullyRemovedReseller = !em.contains(reseller);
		}
		em.close();
		return successfullyRemovedReseller;
	}	
}
