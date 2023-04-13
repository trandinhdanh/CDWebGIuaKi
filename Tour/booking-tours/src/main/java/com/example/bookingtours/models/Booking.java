package com.example.bookingtours.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Component
@Scope("prototype")
public class Booking {
    private long id;
    private Customer customer;
    private Tour tour;
    private Date departureDate;//ngày khởi hành.
    private int noAdults;
    private int noChildren;



}
