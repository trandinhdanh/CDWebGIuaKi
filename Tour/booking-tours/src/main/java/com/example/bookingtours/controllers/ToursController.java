package com.example.bookingtours.controllers;

import com.example.bookingtours.models.Customer;
import com.example.bookingtours.models.dto.BookingDto;
import com.example.bookingtours.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

import java.text.ParseException;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;


@Controller
@RequestMapping("/Tours")
public class ToursController {
    @Autowired
    private TourService tourService;

    @GetMapping("/showTours")
    public String showTours(Model model){
        model.addAttribute("tours", tourService.getAllTours());
        return "listTours";
    }

    @GetMapping("/showTour/{id}")
    public String showTour(@PathVariable long id, Model model){
        model.addAttribute("tour", tourService.getTour(id));
        return "tourDetails";
    }

    @GetMapping("/bookTour/{id}")
    public String showBookingTour(@PathVariable long id, Model model){
        model.addAttribute("tour", tourService.getTour(id));
        return "bookTour";
    }

    @PostMapping("/comfirm")
    public String comfirmBookingTour(@RequestParam String name,
                                     @RequestParam String address,
                                     @RequestParam String email,
                                     @RequestParam String phone,
                                     @RequestParam String departure_date,
                                     @RequestParam int adults,
                                     @RequestParam int children,
                                     @RequestParam int customValue

    ) throws ParseException {

        Customer cus = new Customer(tourService.countCustomer(), name, address, email, phone);
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date date = df.parse(departure_date);
        BookingDto b = new BookingDto(tourService.countBooking(), cus.getId(), customValue, date, adults, children);
        tourService.saveCusTomer(cus);
        tourService.saveBooking(b);
//        System.out.println(customValue);
        return "comfirm";
    }

}
