package com.niit.backend;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.backend.DAO.CategoryDAO;
import com.niit.backend.DAO.ProductDAO;
import com.niit.backend.model.Category;
import com.niit.backend.model.Product;

public class ProductTest 
{

	private static AnnotationConfigApplicationContext context;

	static private ProductDAO productDAO;
	static private Product product;
	

	@BeforeClass
	public static void init() 
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.OnlineBackend");
		context.refresh();
		
		productDAO = (ProductDAO)context.getBean("productDAO");
	}

	
	
	@Test
	public void testAddCategory() 
	{
		product = new Product();
		
		
		product.setName("Realme Narzo 20");
		product.setBrand("Realme");
		product.setDescription("Glory Silver, 128 GB, 4 GB RAM");
		product.setUnitPrice(11499);
		product.setActive(true);
		product.setCategoryId(2);
		product.setSupplierId(3);
		product.setQuantity(3);
		
		assertEquals("Could not add product",true,productDAO.addProduct(product));
		
		
	}
	
	/*
	
	
	@Test
	public void testGetActiveProduct()
	{
		
		assertEquals("Could not extract active product",3,productDAO.getActiveProduct().size());
	}
	
	
	@Test
	public void testGetCategoryProduct()
	{
		
		assertEquals("Could not extract category product",2,productDAO.getCategoryProduct(3).size());
	}
	*/
	
}
