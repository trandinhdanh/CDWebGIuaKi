package com.example.bookingtours.models;

import lombok.*;
import org.springframework.stereotype.Component;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "tour")
@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Component
public class Tour implements Serializable{
    @Id
    private Long id;
    private String name;
    private String description;
    private String days;
    private String transportation;//phương tiện di chuyển
    @Column(name = "departure_Schedule")
    private String departureSchedule;// lịch trình khởi hành
    private double price;

}