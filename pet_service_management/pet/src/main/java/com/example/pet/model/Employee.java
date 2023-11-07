package com.example.pet.model;

import java.sql.Date;

public class Employee {
    private int id;
    private String name;
    private Date birthday;
    private String phoneNumber;
    private String email;
    private String address;
    private String identificationCard;
    private int salary;
    private int id_account;

    public Employee() {
    }

    public Employee(String name, Date birthday, String phoneNumber, String email, String address, String identificationCard, int salary) {
        this.name = name;
        this.birthday = birthday;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.identificationCard = identificationCard;
        this.salary = salary;
    }

    public Employee(String name, Date birthday, String phoneNumber, String email, String address, String identificationCard, int salary, int id_account) {
        this.name = name;
        this.birthday = birthday;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.identificationCard = identificationCard;
        this.salary = salary;
        this.id_account = id_account;
    }

    public Employee(int id, String name, Date birthday, String phoneNumber, String email, String address, String identificationCard, int salary) {
        this.id = id;
        this.name = name;
        this.birthday = birthday;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.identificationCard = identificationCard;
        this.salary = salary;
    }

    public Employee(int id, String name, Date birthday, String phoneNumber, String email, String address, String identificationCard, int salary, int id_account) {
        this.id = id;
        this.name = name;
        this.birthday = birthday;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.identificationCard = identificationCard;
        this.salary = salary;
        this.id_account = id_account;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIdentificationCard() {
        return identificationCard;
    }

    public void setIdentificationCard(String identificationCard) {
        this.identificationCard = identificationCard;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public int getId_account() {
        return id_account;
    }

    public void setId_account(int id_account) {
        this.id_account = id_account;
    }
}