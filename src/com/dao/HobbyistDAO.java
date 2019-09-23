package com.dao;

import java.util.List;

import com.entity.Hobbyist;

public interface HobbyistDAO 
{
	public List<Hobbyist> getHobbyists();

	public void createHobbyist(Hobbyist newHobbyist);
}
