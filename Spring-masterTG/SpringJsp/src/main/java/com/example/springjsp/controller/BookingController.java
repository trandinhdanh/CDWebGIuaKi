package com.example.springjsp.controller;

import com.example.springjsp.model.Booking;
import com.example.springjsp.model.Customer;
import com.example.springjsp.model.Tour;
import com.example.springjsp.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.util.List;

@Controller
@RequestMapping("/bookings")
public class BookingController {

    @Autowired
    private TourService tourService;


    @GetMapping("/listTours")
    public String listTours(Model model) {
        List<Tour> tours = tourService.getAllTours();
        model.addAttribute("tours", tours);
        return "listTours";
    }

    @GetMapping("/tourDetails/{id}")
    public String viewTourDetails(@PathVariable Long id, Model model) {
        Tour tour = tourService.getTour(id);
        model.addAttribute("tour", tour);
        return "tourDetails";
    }


//    @PostMapping("/customers")
//    public void saveCustomer(@RequestBody Customer customer) {
//        tourService.saveCustomer(customer);
//    }


    @GetMapping("/bookingTour/{id}")
    public String showAddBooking(@PathVariable Long id, Model model) {
        Tour tour = tourService.getTour(id);
        Customer customer = new Customer();
        Booking booking = new Booking();
        model.addAttribute("tour", tour);
        model.addAttribute("customer", customer);
        model.addAttribute("booking", booking);
        return "bookingTour";
    }


//    @PostMapping(value ="/bookingTour", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
//    public void saveCustomer( @RequestBody Customer customer) {
//        tourService.saveCustomer(customer);
//    }

//    @PostMapping("/bookingTour/{id}")
//    public String saveBooking(@PathVariable Long id, @RequestBody Booking booking) {
//
//        tourService.saveBooking(booking);
//        return "bookingSuccess";
//    }

//    @PostMapping("/bookingTour/{id}")
//    public String bookingTourSubmit(@ModelAttribute Booking booking,
//                                    @RequestParam Long customerId,
//                                    @RequestParam Long tourId) {
//        Customer customer = customerRepository.findById(customerId).get();
//        Tour tour = tourRepository.findById(tourId).get();
//        booking.setCustomer(customer);
//        booking.setTour(tour);
//        bookingRepository.save(booking);
//        return "bookingSuccess";
//    }

    @PostMapping("/bookingTour/{id}")
    public String createBooking(@PathVariable Long id,
                                @RequestParam("id") int idBooking,
                                @RequestParam("customer_id") int customer_id,
                                @RequestParam("departureDate") Date departureDate,
                                @RequestParam("noAdults") int noAdults,
                                @RequestParam("noChildren") int noChildren,
                                @RequestParam("name") String customerName,
                                @RequestParam("email") String customerEmail,
                                @RequestParam("phone") String customerPhone,
                                @RequestParam("address") String customerAddress) {

        Tour tour = tourService.getTour(id);
        Customer customer = new Customer();
        customer.setId(customer_id);
        customer.setName(customerName);
        customer.setAddress(customerAddress);
        customer.setEmail(customerEmail);
        customer.setPhone(customerPhone);

        tourService.saveCustomer(customer);


        Booking booking = new Booking();
        booking.setId(idBooking);
        booking.setCustomer(customer);
        booking.setDepartureDate(departureDate);
        booking.setNoAdults(noAdults);
        booking.setNoChildren(noChildren);
        booking.setTour(tour);

        tourService.saveBooking(booking);
        return "bookingSuccess";
    }
}
