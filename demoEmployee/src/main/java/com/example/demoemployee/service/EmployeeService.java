package com.example.demoemployee.service;

import com.example.demoemployee.model.EmployeeEntity;
import com.example.demoemployee.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;
@Service
public class EmployeeService {
   @Autowired
    private EmployeeRepository employeeRepository;
    public List<EmployeeEntity> getAllEmployees(){
        return employeeRepository.findAll();
    }
}
