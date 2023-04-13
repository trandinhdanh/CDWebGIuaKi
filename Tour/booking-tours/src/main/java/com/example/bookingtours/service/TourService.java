package com.example.bookingtours.service;

import org.springframework.stereotype.Service;
import com.example.bookingtours.models.*;
import com.example.bookingtours.models.dto.*;
import java.util.List;
@Service
public interface TourService {
    List<Tour> getAllTours();
    Tour getTour(long id);
    void saveCusTomer(Customer customer);
    void saveBooking(Booking booking);
    void saveBooking(BookingDto booking);

    long countTour();
    long countCustomer();
    long countBooking();
}
