package com.example.bookingtours.service;

import com.example.bookingtours.models.dto.BookingDto;
import com.example.bookingtours.repository.TourRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.example.bookingtours.repository.CustomerRepository;
import com.example.bookingtours.repository.BookingRepository;

import com.example.bookingtours.models.*;
import java.util.List;


@Component
public class TourServiceImp implements TourService{
    @Autowired
    private TourRepository tourRepository;
    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private BookingRepository bookingRepository;


    @Override
    public List<Tour> getAllTours() {
        return tourRepository.findAll();
    }

    @Override
    public Tour getTour(long id) {
        return tourRepository.findById(id).get();
    }

    @Override
    public void saveCusTomer(Customer customer) {
        customerRepository.save(customer);
    }

    @Override
    public void saveBooking(Booking booking) {
        BookingDto bookingDto = BookingDto.toBookingDto(booking);
        bookingRepository.save(bookingDto);
    }
    @Override
    public void saveBooking(BookingDto booking) {
        bookingRepository.save(booking);
    }

    @Override
    public long countTour() {
        return tourRepository.count();
    }

    @Override
    public long countCustomer() {
        return customerRepository.count();
    }

    @Override
    public long countBooking() {
        return bookingRepository.count();
    }
}
