package net.codejava.service;

import net.codejava.model.Employee;
import net.codejava.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    public List<Employee> getAllEmployees() {
        return employeeRepository.findAll();
    }

    public Employee getEmployeeById(String empId) {
        Employee employee = employeeRepository.findOneByEmpId(empId);
        return employee;
    }

    public void addEmployee(Employee employee) {
        employeeRepository.save(employee);
    }

    public void updateEmployee(String empId, Employee employee) {
        Employee employeeOld = employeeRepository.findOneByEmpId(empId);
        employeeOld.setName(employee.getName());
        employeeOld.setMale(employee.isMale());
        if (employee.getBirthday() != null) {
            employeeOld.setBirthday(employee.getBirthday());
        }
        employeeOld.setAddress(employee.getAddress());
        employeeOld.setPhone(employee.getPhone());
        employeeOld.setDepartment(employee.getDepartment());
        employeeOld.setTitle(employee.getTitle());
        employeeOld.setWageRale(employee.getWageRale());
        employeeRepository.save(employeeOld);
    }

    @Transactional
    public void deleteEmployee(String id) {
        employeeRepository.deleteByEmpId(id);
    }
}


