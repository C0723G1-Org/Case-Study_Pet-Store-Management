package com.example.pet.service;


import com.example.pet.dto.BookingNamDTO;
import com.example.pet.model.Customer;

import java.sql.Date;
import java.util.List;


public interface ICustomerService {
    Customer display(int id);
    Customer findById(int id);
    int validateCustomer(String name, String telephone, String email, Date birthday);
    boolean updateCustomer(Customer customer);
    void removeCustomer(int id);
    List<BookingNamDTO> history(int id);
    BookingNamDTO detail(int bookingId);
}