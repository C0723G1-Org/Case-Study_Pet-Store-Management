package com.example.pet.service.impl;

import com.example.pet.dto.EmployeeDTO;
import com.example.pet.model.Employee;
import com.example.pet.repository.IEmployeeRepository;
import com.example.pet.repository.impl.EmployeeRepository;
import com.example.pet.service.IEmployeeService;


import java.util.List;

public class EmployeeService implements IEmployeeService {
    private final IEmployeeRepository employeeRepository = new EmployeeRepository();
    @Override
    public void insertEmployee(Employee employee) {
        employeeRepository.insertEmployee(employee);
    }

    @Override
    public List<EmployeeDTO> getAllEmployees() {
        return employeeRepository.getAllEmployees();
    }

    @Override
    public Employee selectEmployee(int id) {
        return employeeRepository.selectEmployee(id);
    }

    @Override
    public boolean deleteEmployee(int id) {
        return employeeRepository.deleteEmployee(id);
    }

    @Override
    public boolean updateEmployee(Employee employee) {
        return employeeRepository.updateEmployee(employee);
    }
}