package com.example.pet.repository;

import com.example.pet.dto.BookingNamDTO;
import com.example.pet.model.Customer;

import java.util.List;

public interface ICustomerRepository {
    Customer display( int id);
    Customer findById(int idCheck);
    boolean updateCustomer(Customer customer);
    void removeCustomer(int id);
    List<BookingNamDTO> history(int id);
    BookingNamDTO detail(int bookingId);
}