package com.makman.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.makman.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	// need to inject the session factory
	
	@Autowired
	private SessionFactory sessionFactory;


	
	public List<Customer> getCustomers() {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// get the query
		Query<Customer> theQuery = currentSession.createQuery("from Customer", Customer.class);

		// execute query and get result list
		
		List<Customer> customers = theQuery.getResultList();

		// return the results

		return customers;
	}



	@Override
	public void saveCustomer(Customer theCustomer) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//save the customer or update
		currentSession.saveOrUpdate(theCustomer);
		
	}



	@Override
	public Customer getCustomer(int theId) {
		// get current hibernate session
		Session session = sessionFactory.getCurrentSession();
		
		// retrieve data using id
		Customer theCustomer = session.get(Customer.class, theId);
		
		return theCustomer;
	}



	@Override
	public void deleteCustomer(int theId) {
		 // get current hibernate session
		  Session session = sessionFactory.getCurrentSession();
		  
		  // retrieve data using id
		  Customer theCustomer = session.get(Customer.class, theId);

		  // delete the customer
		  session.delete(theCustomer);
	}

}
