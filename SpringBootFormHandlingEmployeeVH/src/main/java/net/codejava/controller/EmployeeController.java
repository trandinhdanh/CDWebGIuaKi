package net.codejava.controller;

import net.codejava.model.Employee;
import net.codejava.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/nhan-vien")
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/danh-sach")
    public ModelAndView getAll() {
        ModelAndView modelAndView = new ModelAndView("dsnhanvien");
        List<Employee> employees = employeeService.getAllEmployees();
        modelAndView.addObject("employeeList", employees);
        modelAndView.addObject("totalEmployee", employees.size());
        return modelAndView;
    }

    @GetMapping("/chi-tiet/{empId}")
    public String viewEmployee(@PathVariable String empId, Model model) {
        Employee employee = employeeService.getEmployeeById(empId);
        model.addAttribute("employee", employee);
        return "chitietnhanvien";
    }

    @GetMapping("/them-moi")
    public String showAddForm(Model model) {
        Employee employee = new Employee();
        model.addAttribute("employee", employee);
        return "themnhanvien";
    }

    @PostMapping("/them-moi")
    public String newEmployee(@ModelAttribute("employee") Employee employee, @RequestParam("birthday") String dateString) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date birthday;
        try {
            birthday = format.parse(dateString);
        } catch (ParseException e) {
            // xử lý nếu không parse được chuỗi dateString
            e.printStackTrace();
            return "redirect:/nhan-vien/danh-sach";
        }
        employee.setBirthday(birthday);
        employeeService.addEmployee(employee);
        return "redirect:/nhan-vien/danh-sach";
    }

    @PostMapping("/xoa")
    public String deleteEmployee(HttpServletRequest request) {
        String[] ids = request.getParameterValues("selectedRow");
        for (String id : ids) {
            employeeService.deleteEmployee(id);
        }
        return "redirect:/nhan-vien/danh-sach";
    }

    //    @GetMapping("/edit/{empId}")
    @GetMapping("/chinh-sua/{empId}")
    public String showEditForm(@PathVariable String empId, Model model) {
        Employee employee = employeeService.getEmployeeById(empId);
        model.addAttribute("employee", employee);
        return "suanhanvien";
    }

    @PostMapping("/chinh-sua/{empId}")
    public String editEmployee(@PathVariable String empId, Employee employee) {
        employeeService.updateEmployee(empId, employee);
        return "redirect:/nhan-vien/chi-tiet/" + empId;
    }

}
