package net.codejava.service;

import net.codejava.model.Employee;
import net.codejava.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    public List<Employee> getAllEmployees() {
        return employeeRepository.findAll();
    }

    public Employee getEmployeeById(String empId) {
        Optional<Employee> employee = employeeRepository.findById(empId);
        return employee.orElse(null);
    }

    public void addEmployee(Employee employee) {
        employeeRepository.save(employee);
    }

    public void updateEmployee(String empId,Employee employee) {
        Optional<Employee> emp = employeeRepository.findById(employee.getEmpId());
        if (emp.isPresent()) {
            Employee existingEmp = emp.get();
            existingEmp.setEmpId(empId);
            existingEmp.setName(employee.getName());
            existingEmp.setMale(employee.getMale());
            existingEmp.setBirthday(employee.getBirthday());
            existingEmp.setAddress(employee.getAddress());
            existingEmp.setPhone(employee.getPhone());
            existingEmp.setDepartment(employee.getDepartment());
            existingEmp.setTitle(employee.getTitle());
            existingEmp.setWageRate(employee.getWageRate());
            employeeRepository.save(existingEmp);
        }
    }

    public void deleteEmployee(String empId) {
        employeeRepository.deleteById(empId);
    }
}


