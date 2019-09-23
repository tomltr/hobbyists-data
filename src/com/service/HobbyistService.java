package com.service;

import java.util.List;

import com.entity.Hobbyist;

public interface HobbyistService 
{
	public List<Hobbyist> getHobbyists();

	public void createHobbyist(Hobbyist newHobbyist);
}
