package com.example.springjsp.model;


import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Tour {

    @Id
    private long id;
    private String description;
    private String days;
    private String transportation;
    private String departureSchedule;
    private double price;

    // getters and setters for all attributes
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }

    public String getTransportation() {
        return transportation;
    }

    public void setTransportation(String transportation) {
        this.transportation = transportation;
    }

    public String getDepartureSchedule() {
        return departureSchedule;
    }

    public void setDepartureSchedule(String departureSchedule) {
        this.departureSchedule = departureSchedule;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }


}

