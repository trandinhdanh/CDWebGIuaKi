package com.example.bookingtours.models.dto;

import com.example.bookingtours.models.Booking;
import lombok.*;
import org.springframework.stereotype.Component;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "booking")
@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Component
public class BookingDto implements Serializable {

    @Id
    private long id;
    private long id_cus;
    private long id_tour;
    private Date departure_date;
    private int no_adults;
    private int no_Children;

    public static BookingDto toBookingDto(Booking booking){
        BookingDto tmp = new BookingDto();
        tmp.setId(booking.getId());
        tmp.setId_cus(booking.getCustomer().getId());
        tmp.setId_tour(booking.getTour().getId());
        tmp.setDeparture_date(booking.getDepartureDate());
        tmp.setNo_adults(booking.getNoAdults());
        tmp.setNo_Children(booking.getNoChildren());
        return tmp;
    }


}
