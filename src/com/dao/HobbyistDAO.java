package com.dao;

import java.util.List;

import com.entity.Hobbyist;

public interface HobbyistDAO 
{
	public List<Hobbyist> getHobbyists();

	public void saveHobbyist(Hobbyist newHobbyist);

	public Hobbyist getHobbyist(int id);
	
	public void removeHobbyist(int id);

	public List<Hobbyist> getHobbyistsByOption(String option);
}
