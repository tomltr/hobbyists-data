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
		Query<Hobbyist> theQuery = currentSession.createQuery("FROM Hobbyist", Hobbyist.class);
		
		// execute query and get result list
		List<Hobbyist> hobbyists = theQuery.getResultList();
		
		// return the results
		
		return hobbyists;
	}

	@Override
	public void saveHobbyist(Hobbyist newHobbyist) 
	{
		
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save new hobbyist
		currentSession.saveOrUpdate(newHobbyist);
	}

	@Override
	public Hobbyist getHobbyist(int id) 
	{
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now retrieve/read from database using the primary key
		Hobbyist hobbyist = currentSession.get(Hobbyist.class, id);
		
		return hobbyist;
	}
	
	@Override
	public void removeHobbyist(int id)
	{
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// delete a hobbyist with the same id
		Query theQuery = currentSession.createQuery("DELETE FROM Hobbyist WHERE id=:hobbyistId");
		theQuery.setParameter("hobbyistId", id);
		
		theQuery.executeUpdate();
	}

//	@Override
//	public List<Hobbyist> getHobbyistsByName() 
//	{
//		// get the current hibernate session
//		Session currentSession = sessionFactory.getCurrentSession();
//		
//		// create a query
//		Query<Hobbyist> theQuery = currentSession.createQuery("FROM Hobbyist order by name asc", Hobbyist.class);
//		
//		// execute query and get result list order by name
//		List<Hobbyist> theHobbyists = theQuery.getResultList();
//		
//		return theHobbyists;
//	}

	

	@Override
	public List<Hobbyist> getHobbyistsByOption(String option) 
	{
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// Create a query String using StringBuilder
		StringBuilder queryString = new StringBuilder("FROM Hobbyist order by ");
		queryString.append(option);
		queryString.append(" asc");
				
		// create a query
		Query<Hobbyist> theQuery = currentSession.createQuery(queryString.toString(), Hobbyist.class);
				
		// execute query and get result list order by name
		List<Hobbyist> theHobbyists = theQuery.getResultList();
				
		return theHobbyists;
	}

}
