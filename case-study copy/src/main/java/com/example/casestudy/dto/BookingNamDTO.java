package com.example.casestudy.dto;



public class BookingNamDTO {
    private int bookingId;
    private int petId;
    private String petName;
    private int employeeId;
    private String employeeName;
    private int typePetId;
    private String typePetName;
    private String startTime;
    private String endTime;
    private int statusId;
    private String statusName;

    public BookingNamDTO(int bookingId, int petId, String petName, int employeeId, String employeeName, String startTime, String endTime, int statusId, String statusName) {
        this.bookingId = bookingId;
        this.petId = petId;
        this.petName = petName;
        this.employeeId = employeeId;
        this.employeeName = employeeName;
        this.startTime = startTime;
        this.endTime = endTime;
        this.statusId = statusId;
        this.statusName = statusName;
    }

    public BookingNamDTO(int bookingId, String petName, String typePetName, String startTime, String endTime, String statusName) {
        this.bookingId = bookingId;
        this.petName = petName;
        this.typePetName = typePetName;
        this.startTime = startTime;
        this.endTime = endTime;
        this.statusName = statusName;
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public int getPetId() {
        return petId;
    }

    public void setPetId(int petId) {
        this.petId = petId;
    }

    public String getPetName() {
        return petName;
    }

    public void setPetName(String petName) {
        this.petName = petName;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }

    public int getTypePetId() {
        return typePetId;
    }

    public void setTypePetId(int typePetId) {
        this.typePetId = typePetId;
    }

    public String getTypePetName() {
        return typePetName;
    }

    public void setTypePetName(String typePetName) {
        this.typePetName = typePetName;
    }
}
