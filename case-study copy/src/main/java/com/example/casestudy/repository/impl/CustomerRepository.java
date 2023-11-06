package com.example.casestudy.repository.impl;


import com.example.casestudy.dto.BookingNamDTO;
import com.example.casestudy.model.Customer;
import com.example.casestudy.repository.BaseRepository;
import com.example.casestudy.repository.ICustomerRepository;

import java.sql.*;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {

    private static final String SELECT = "select * from customer where id_account=?";
    private static final String SELECT_CUSTOMER = "select * from customer where id_customer=?";
    private static final String UPDATE_CUSTOMER = "update customer\n" +
            "set name_customer=?,birthday=?,phone_number=?,email=?,address=?,gender=?\n" +
            "where id_customer=?;";
    private static final String REMOVE_CUSTOMER = "update customer\n" +
            "set delete_customer=1\n" +
            "where id_customer=?;";
    private static final String SELECT_BOOKING_HISTORY = "select b.id_booking, p.name_pet,t.name_type_pet,b.start_time,b.end_time, s.booking_name_status\n" +
            "from customer c\n" +
            "join pet p on c.id_customer = p.id_customer\n" +
            "join type_pet t on t.id_type_pet = p.id_type_pet\n" +
            "join booking b on p.id_pet=b.id_pet\n" +
            "join booking_status s on s.booking_id_status = b.booking_id_status\n" +
            "where p.id_customer =? and (b.booking_id_status=1 or b.booking_id_status=2);";
    private static final String SELECT_BOOKING_DETAIL = "select \n" +
            "*,service.service_price*quantity as sum_detail\n" +
            "            from customer c\n" +
            "            join pet p on c.id_customer = p.id_customer\n" +
            "            join type_pet t on t.id_type_pet = p.id_type_pet\n" +
            "            join booking b on p.id_pet=b.id_pet\n" +
            "            join booking_status s on s.booking_id_status = b.booking_id_status\n" +
            "            join detail_service d on d.id_booking=b.id_booking\n" +
            "            join service on service.id_service = service.id_service\n" +
            "            where b.id_booking =? ;";

    private static final String SELECT_SEARCH ="";



    @Override
    public Customer display(int id) {
        Connection connection = BaseRepository.getConnectDB();
        Customer customer = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT);
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id_customer = resultSet.getInt("id_customer");
                String name = resultSet.getString("name_customer");
                Date birthday = resultSet.getDate("birthday");
                String telephone = resultSet.getString("phone_number");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                int gender = resultSet.getInt("gender");
                customer = new Customer(id_customer, name, birthday, telephone, email, address, gender);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return customer;
    }



    @Override
    public Customer findById(int idCheck) {
        Connection connection = BaseRepository.getConnectDB();
        Customer customer = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CUSTOMER);
            preparedStatement.setInt(1, idCheck);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id_customer");
                String name = resultSet.getString("name_customer");
                Date birthday = resultSet.getDate("birthday");
                String telephone = resultSet.getString("phone_number");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                int gender = resultSet.getInt("gender");
                customer = new Customer(id, name, birthday, telephone, email, address, gender);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return customer;
    }

    @Override
    public boolean updateCustomer(Customer customer) {
        Connection connection = BaseRepository.getConnectDB();
        int count;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CUSTOMER);
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setDate(2, customer.getBirthday());
            preparedStatement.setString(3, customer.getTelephone());
            preparedStatement.setString(4, customer.getEmail());
            preparedStatement.setString(5, customer.getAddress());
            preparedStatement.setInt(6, customer.getGender());
            preparedStatement.setInt(7, customer.getId());
            count = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return (count == 1);
    }

    @Override
    public void removeCustomer(int id) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(REMOVE_CUSTOMER);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<BookingNamDTO> history(int id) {
        Connection connection = BaseRepository.getConnectDB();
        List<BookingNamDTO> bookingHistory = new ArrayList<>();
        BookingNamDTO BookingNamDTO = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BOOKING_HISTORY);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int bookingId = resultSet.getInt("id_booking");
                String petName = resultSet.getString("name_pet");
                String typePetName = resultSet.getString("name_type_pet");

                long epochMilliStartTime = resultSet.getDate("start_time").getTime();
                LocalDateTime localStartTime = Instant.ofEpochMilli(epochMilliStartTime)
                        .atZone(ZoneId.systemDefault())
                        .toLocalDateTime();
                String startTime = localStartTime.format(DateTimeFormatter
                        .ofPattern("dd/MM/yyyy HH:mm:ss"));

                // đổi thành mili giây
                long epochMilliEndTime = resultSet.getDate("end_time").getTime();
                // chuyển thành local time
                LocalDateTime localEndTime = Instant.ofEpochMilli(epochMilliEndTime)
                        .atZone(ZoneId.systemDefault())
                        .toLocalDateTime();
                // format lại theo dang dd/MM/yyyy HH:mm:ss
                String endTime = localEndTime.format(DateTimeFormatter
                        .ofPattern("dd/MM/yyyy HH:mm:ss"));

                String statusName = resultSet.getString("booking_name_status");
                BookingNamDTO = new BookingNamDTO(bookingId, petName, typePetName, startTime, endTime, statusName);
                bookingHistory.add(BookingNamDTO);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookingHistory;
    }

    @Override
    public BookingNamDTO detail(int bookingId) {
        return null;
    }
}
