package com.niit.backend.DAO;

import java.util.List;


import com.niit.backend.model.Address;
import com.niit.backend.model.Cart;
import com.niit.backend.model.User;

public interface UserDAO 
{
boolean addUser(User user);
	
	boolean addAddress(Address address);
	
	boolean updateCart(Cart cart);
	
	User getByEmail(String email) ;
	
	Address getBillingAddress(int userId);
	
	List<Address> listShippingAddresses(int userId);
	
	Address getAddress(int addressId);
}
