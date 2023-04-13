package net.codejava.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "employee")
public class Employee {
    @Id //not null and primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY)//Tự tăng giá trị id
    private Long id;
    @Column(name = "emp_id",length = 4)
    private String empId;
    @Column(length = 30)
    private String name;
    @Column
    private boolean male;
    @Column
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;
    @Column(length = 30)
    private String address;
    @Column(length = 10)
    private String phone;
    @Column(length = 30)
    private String department;
    @Column(length = 3)
    private String title;
    @Column
    private Long wageRale;

    public Long getId() {
        return id;
    }

    public String getEmpId() {
        return empId;
    }

    public void setEmpId(String empId) {
        this.empId = empId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isMale() {
        return male;
    }

    public void setMale(boolean male) {
        this.male = male;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Long getWageRale() {
        return wageRale;
    }

    public void setWageRale(Long wageRale) {
        this.wageRale = wageRale;
    }
}
