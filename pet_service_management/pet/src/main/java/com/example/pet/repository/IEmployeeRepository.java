package com.example.pet.repository;

import com.example.pet.dto.EmployeeDTO;
import com.example.pet.model.Employee;

import java.util.List;

public interface IEmployeeRepository {
    void insertEmployee(Employee employee);
    List<EmployeeDTO> getAllEmployees();
    Employee selectEmployee(int id);
    boolean deleteEmployee(int id);
    boolean updateEmployee(Employee employee);
}