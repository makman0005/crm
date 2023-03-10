package com.makman.dao;

import java.util.List;

import com.makman.entity.Customer;

public interface CustomerDAO {
List<Customer> getCustomers();

void saveCustomer(Customer theCustomer);

Customer getCustomer(int theId);

void deleteCustomer(int theId);
}
