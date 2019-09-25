package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.HobbyistDAO;
import com.entity.Hobbyist;

@Service
public class HobbyistServiceImpl implements HobbyistService 
{

	// need to inject customer dao
	@Autowired
	private HobbyistDAO hobbyistDAO;
	
	@Override
	@Transactional
	public List<Hobbyist> getHobbyists() 
	{
		return hobbyistDAO.getHobbyists();
	}

	@Override
	@Transactional
	public void saveHobbyist(Hobbyist newHobbyist) 
	{
		hobbyistDAO.saveHobbyist(newHobbyist);
		
	}

	@Override
	@Transactional
	public Hobbyist getHobbyist(int id) 
	{
		
		return hobbyistDAO.getHobbyist(id);
	}

	@Override
	@Transactional
	public void removeHobbyist(int id) 
	{
		hobbyistDAO.removeHobbyist(id);
	}


	@Override
	@Transactional
	public List<Hobbyist> getHobbyistsByOption(String option) 
	{
		
		return hobbyistDAO.getHobbyistsByOption(option);
	}

}
