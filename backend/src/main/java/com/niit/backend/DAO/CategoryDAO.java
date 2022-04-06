package com.niit.backend.DAO;

import java.util.List;

import com.niit.backend.model.Category;

public interface CategoryDAO 
{
	
	Category getCategory(int id);
	List<Category> categoryList();
	boolean insert(Category category);
	boolean update(Category category);
	boolean delete(Category category);
}
