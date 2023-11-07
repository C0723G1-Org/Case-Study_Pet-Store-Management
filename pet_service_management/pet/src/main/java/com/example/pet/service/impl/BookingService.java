package com.example.pet.service.impl;




import com.example.pet.dto.BookingDTO;
import com.example.pet.model.Booking;
import com.example.pet.repository.IBookingRepository;
import com.example.pet.repository.impl.BookingRepository;
import com.example.pet.service.IBookingService;

import java.sql.SQLException;
import java.util.List;

public class BookingService implements IBookingService {
    private IBookingRepository bookingRepository = (IBookingRepository) new BookingRepository();
    @Override
    public void insertBooking(Booking booking)throws SQLException {
        bookingRepository.insertBooking(booking);
    }

    @Override
    public Booking selectBooking(int id) throws SQLException {
        return bookingRepository.selectBooking(id);
    }

    @Override
    public List<BookingDTO> selectAllBooking() throws SQLException {
        return bookingRepository.selectAllBooking();
    }

    @Override
    public boolean deleteBooking(int id) throws SQLException {
        return bookingRepository.deleteBooking(id);
    }

    @Override
    public boolean updateBooking(Booking booking) throws SQLException {
        return bookingRepository.updateBooking(booking);
    }
}