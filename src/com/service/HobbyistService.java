package com.service;

import java.util.List;

import com.entity.Hobbyist;

public interface HobbyistService 
{
	public List<Hobbyist> getHobbyists();

	public void saveHobbyist(Hobbyist newHobbyist);

	public Hobbyist getHobbyist(int id);

	public void removeHobbyist(int id);


	public List<Hobbyist> getHobbyistsByOption(String option);

	public List<Hobbyist> search(String keyword);
	
}
