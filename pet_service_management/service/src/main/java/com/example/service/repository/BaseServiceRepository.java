package com.example.service.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseServiceRepository {
    private static String jdbcURL = "jdbc:mysql://localhost:3306/pet_store";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "123456";
    public static Connection getConnectDB(){
        Connection connection= null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection= DriverManager.getConnection(jdbcURL,jdbcUsername,jdbcPassword);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

}
