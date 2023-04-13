package com.example.bookingtours.repository;

import com.example.bookingtours.models.Customer;

import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long>{
}
