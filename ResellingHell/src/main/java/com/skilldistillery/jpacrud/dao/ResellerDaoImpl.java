package com.skilldistillery.jpacrud.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Reseller;

@Service
@Transactional
public class ResellerDaoImpl implements ResellerDAO {

	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPAReseller");

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
		em.getTransaction().begin();
		em.persist(reseller);
		em.flush();
		em.getTransaction().commit();
		
		
		em.close();
		return reseller;
	}

	@Override
	public Reseller update(int id, Reseller reseller) {
			    Reseller dbReseller = em.find(Reseller.class, id);
			 
			    em.getTransaction().begin();
			    
			    dbReseller.setSellerUserName(reseller.getSellerUserName());

			    em.getTransaction().commit();
			    em.close();
		return dbReseller;
	}
	
	@Override
	public boolean destroy(int id) {
		boolean successfullyRemovedReseller = false;
		Reseller reseller = em.find(Reseller.class, id);
		
		if(reseller != null) {
			em.getTransaction().begin();
			
			em.remove(reseller); // performs the delete on the managed entity
			successfullyRemovedReseller = !em.contains(reseller);
			
			em.getTransaction().commit();
			
		}
		em.close();
		return successfullyRemovedReseller;
	}
	
}
