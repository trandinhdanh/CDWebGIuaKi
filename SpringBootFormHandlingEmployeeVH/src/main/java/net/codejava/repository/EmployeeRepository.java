package net.codejava.repository;

import net.codejava.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long> {
    // Các phương thức tùy chỉnh khác có thể được thêm vào đây
    Employee findOneByEmpId(String id);
    void deleteByEmpId(String empId);
}
