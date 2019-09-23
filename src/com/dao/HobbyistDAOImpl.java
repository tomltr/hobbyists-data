package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.entity.Hobbyist;

@Repository
public class HobbyistDAOImpl implements HobbyistDAO 
{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Hobbyist> getHobbyists() 
	{
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Hobbyist> theQuery = currentSession.createQuery("from Hobbyist", Hobbyist.class);
		
		// execute query and get result list
		List<Hobbyist> hobbyists = theQuery.getResultList();
		
		// return the results
		
		return hobbyists;
	}

	@Override
	public void createHobbyist(Hobbyist newHobbyist) 
	{
		
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save new hobbyist
		currentSession.save(newHobbyist);
		
	}

}
