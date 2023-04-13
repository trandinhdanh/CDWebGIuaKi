package com.example.springjsp.service;

import com.example.springjsp.model.Booking;
import com.example.springjsp.model.Customer;
import com.example.springjsp.model.Tour;
import com.example.springjsp.repository.BookingRepository;
import com.example.springjsp.repository.CustomerRepository;
import com.example.springjsp.repository.TourRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TourService {

    @Autowired
    private TourRepository tourRepository;

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private BookingRepository bookingRepository;

    public List<Tour> getAllTours() {
        return tourRepository.findAll();
    }

    public Tour getTour(Long id) {
        Optional<Tour> tour = tourRepository.findById(id);
        return tour.orElse(null);
    }

    public void saveCustomer(Customer customer) {
        customerRepository.save(customer);
    }

    public void saveBooking(Booking booking) {

        bookingRepository.save(booking);
    }
}
