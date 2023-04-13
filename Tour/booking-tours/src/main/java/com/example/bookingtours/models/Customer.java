package com.example.bookingtours.models;

import lombok.*;
import org.springframework.stereotype.Component;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;


@Entity
@Table(name = "customer")
@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Component
public class Customer implements Serializable {
    @Id
    private long id;
    private String name;
    private String address;
    private String email;
    private String phone;

}
