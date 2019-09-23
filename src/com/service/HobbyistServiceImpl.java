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

}
