package com.niit.backend.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name = "category_jdv")
public class Category implements Serializable
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	
	private String name;
	
	@Column (name="description")
	private String desc;
	
	@Column (name="image_url")
	private String imageurl;
	
	@Column (name="is_active")
	private boolean active;
	
	
	public int getId() 
	{
		return id;
	}
	public void setId(int id) 
	{
		this.id = id;
	}
	public String getName() 
	{
		return name;
	}
	public void setName(String name) 
	{
		this.name = name;
	}
	public String getDesc() 
	{
		return desc;
	}
	public void setDesc(String desc) 
	{
		this.desc = desc;
	}
	public String getImageurl() 
	{
		return imageurl;
	}
	public void setImageurl(String imageurl) 
	{
		this.imageurl = imageurl;
	}
	public boolean isActive() 
	{
		return active;
	}
	public void setActive(boolean active) 
	{
		this.active = active;
	}
	
}