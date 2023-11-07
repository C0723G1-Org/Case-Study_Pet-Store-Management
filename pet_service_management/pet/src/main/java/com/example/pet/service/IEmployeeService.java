package com.example.pet.service;

import com.example.pet.dto.EmployeeDTO;
import com.example.pet.model.Employee;

import java.util.List;

public interface IEmployeeService {
    void insertEmployee(Employee employee);
    List<EmployeeDTO> getAllEmployees();
    Employee selectEmployee(int id);
    boolean deleteEmployee(int id);
    boolean updateEmployee(Employee employee);
}