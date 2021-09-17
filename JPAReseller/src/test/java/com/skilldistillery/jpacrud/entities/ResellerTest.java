package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class ResellerTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Reseller reseller;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAReseller");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		reseller = em.find(Reseller.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		reseller = null;
	}

	@Test
	void test() {
		assertNotNull(reseller);
		assertEquals(35, reseller.getShoeCount());
		
		
	}

}
