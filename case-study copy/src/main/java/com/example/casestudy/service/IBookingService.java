package com.example.casestudy.service;


import com.example.casestudy.dto.BookingDTO;
import com.example.casestudy.model.Booking;

import java.sql.SQLException;
import java.util.List;

public interface IBookingService {
    void insertBooking(Booking booking) throws SQLException;
    Booking selectBooking(int id) throws SQLException;
    List<BookingDTO> selectAllBooking() throws SQLException;
    boolean deleteBooking(int id) throws SQLException;
    boolean updateBooking(Booking booking) throws SQLException;
}
