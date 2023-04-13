package net.codejava.controller;

import net.codejava.model.Employee;
import net.codejava.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/list")
    public String getAllEmployees(Model model) {
        List<Employee> employees = employeeService.getAllEmployees();
        model.addAttribute("employees", employees);
        return "dsnhanvien";
    }

    @GetMapping("/view/{empId}")
    public String viewEmployee(@PathVariable String empId, Model model) {
        Employee employee = employeeService.getEmployeeById(empId);
        model.addAttribute("employee", employee);
        return "chitietnhanvien";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        Employee employee = new Employee();
        model.addAttribute("employee", employee);
        return "themnhanvien";
    }

    @PostMapping("/add")
    public String newEmployee(@ModelAttribute("employee") Employee employee) {
        employeeService.addEmployee(employee);
        return "redirect:/employee/list";
    }

    @GetMapping("/edit/{empId}")
    public String showEditForm(@PathVariable String empId, Model model) {
        Employee employee = employeeService.getEmployeeById(empId);
        model.addAttribute("employee", employee);
        return "themnhanvien";
    }

    @PostMapping("/edit/{empId}")
    public String editEmployee(@PathVariable String empId, Employee employee) {
        employeeService.updateEmployee(empId,employee);
        return "redirect:/employee/list";
    }

    @GetMapping("/delete/{empId}")
    public String deleteEmployee(@PathVariable String empId) {
        employeeService.deleteEmployee(empId);
        return "redirect:/employee/list";
    }
}
