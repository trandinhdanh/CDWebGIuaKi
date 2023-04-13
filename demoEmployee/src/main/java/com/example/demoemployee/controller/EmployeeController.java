package com.example.demoemployee.controller;

import com.example.demoemployee.model.EmployeeEntity;
import com.example.demoemployee.repository.EmployeeRepository;
import com.example.demoemployee.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
//@RequestMapping("/employee")
public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/list")
//    public ModelAndView showEmployeeList() {
//        List<EmployeeEntity> employeeList = employeeService.getAllEmployees();
//        return new ModelAndView("employeeList", "employeeList", employeeList);
//    }
    public String getAllEmployees(Model model) {
        List<EmployeeEntity> employees = employeeService.getAllEmployees();
        model.addAttribute("employees", employees);
        return "employeeList";
    }
}
