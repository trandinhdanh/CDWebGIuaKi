package com.example.bookingtours.repository;

import com.example.bookingtours.models.dto.BookingDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookingRepository extends JpaRepository<BookingDto, Long> {
}
