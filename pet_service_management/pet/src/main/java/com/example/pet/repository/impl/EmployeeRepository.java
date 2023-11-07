package com.example.pet.repository.impl;
import com.example.pet.dto.EmployeeDTO;
import com.example.pet.model.Employee;
import com.example.pet.repository.BasePetRepository;
import com.example.pet.repository.IEmployeeRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class EmployeeRepository implements IEmployeeRepository {
    private static final String INSERT_EMPLOYEE = "INSERT INTO employees (employee_name, birthday, phone_number,email, address, identification_card, salary, id_account) value (?,?,?,?,?,?,?,?);";
    private static final String SELECT_ALL_EMPLOYEE = "SELECT e.*, a.username FROM employees e join accounts a on e.id_account = a.id_account where delete_employee = 0;";
    private static final String UPDATE_EMPLOYEE = "update employees set employee_name = ?,birthday= ?, phone_number =?,email =?, address =?, identification_card =?, salary =? where id_employee = ?;";
    private static final String DELETE_EMPLOYEE = "update employees set delete_employee = 1 where id_employee = ?";
    private static final String SELECT_EMPLOYEE_BY_ID = "SELECT e.*, a.username FROM employees e join accounts a on e.id_account = a.id_account where id_employee = ?;";


    @Override
    public void insertEmployee(Employee employee) {
        Connection connection = BasePetRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_EMPLOYEE);
            preparedStatement.setString(1, employee.getName());
            preparedStatement.setDate(2, employee.getBirthday());
            preparedStatement.setString(3, employee.getPhoneNumber());
            preparedStatement.setString(4, employee.getEmail());
            preparedStatement.setString(5, employee.getAddress());
            preparedStatement.setString(6, employee.getIdentificationCard());
            preparedStatement.setInt(7, employee.getSalary());
            preparedStatement.setInt(8, employee.getId_account());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<EmployeeDTO> getAllEmployees() {
        List<EmployeeDTO> list = new ArrayList<>();
        Connection connection = BasePetRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_EMPLOYEE);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id_employee");
                String name = resultSet.getString("employee_name");
                String birthday = resultSet.getString("birthday");
                String phoneNumber = resultSet.getString("phone_number");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                String identificationCard = resultSet.getString("identification_card");
                int salary = resultSet.getInt("salary");
                String username = resultSet.getString("username");
                list.add(new EmployeeDTO(id, name, birthday, phoneNumber, email, address, identificationCard, salary, username));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    @Override
    public Employee selectEmployee(int id) {
        Employee employee = null;
        Connection connection = BasePetRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_EMPLOYEE_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("employee_name");
                Date birthday = resultSet.getDate("birthday");
                String phoneNumber = resultSet.getString("phone_number");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                String identificationCard = resultSet.getString("identification_card");
                int salary = resultSet.getInt("salary");
                employee = new Employee(name, birthday, phoneNumber, email, address, identificationCard, salary);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return employee;
    }


    @Override
    public boolean deleteEmployee(int id) {
        boolean rowUpdated;
        Connection connection = BasePetRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_EMPLOYEE);
            preparedStatement.setInt(1, id);
            rowUpdated = preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return rowUpdated;
    }

    @Override
    public boolean updateEmployee(Employee employee) {
        boolean rowUpdated;
        Connection connection = BasePetRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_EMPLOYEE);
            preparedStatement.setString(1, employee.getName());
            preparedStatement.setDate(2, employee.getBirthday());
            preparedStatement.setString(3, employee.getPhoneNumber());
            preparedStatement.setString(4, employee.getEmail());
            preparedStatement.setString(5, employee.getAddress());
            preparedStatement.setString(6, employee.getIdentificationCard());
            preparedStatement.setInt(7, employee.getSalary());
            preparedStatement.setInt(8, employee.getId());
            rowUpdated = preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return rowUpdated;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}