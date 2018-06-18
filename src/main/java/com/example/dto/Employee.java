package com.example.dto;

import java.util.Date;

public class Employee {

  private long empId;
  private String empName;
  private Date birthday;
  private String position;
  private Department department;
  private Manager manager;
  private String isManager;
  private String email;
  private String username;
  private String password;
  private String gender;
  private String phone;
  private String address;

  public Employee(long empId, String empName, Date birthday, String position, Department department, Manager manager, String isManager, String email, String username, String password, String gender, String phone, String address) {
    this.empId = empId;
    this.empName = empName;
    this.birthday = birthday;
    this.position = position;
    this.department = department;
    this.manager = manager;
    this.isManager = isManager;
    this.email = email;
    this.username = username;
    this.password = password;
    this.gender = gender;
    this.phone = phone;
    this.address = address;
  }

  public long getEmpId() {
    return empId;
  }

  public String getEmpName() {
    return empName;
  }

  public Date getBirthday() {
    return birthday;
  }

  public String getPosition() {
    return position;
  }

  public Department getDepartment() {
    return department;
  }

  public Manager getManager() {
    return manager;
  }

  public String getIsManager() {
    return isManager;
  }

  public String getEmail() {
    return email;
  }

  public String getUsername() {
    return username;
  }

  public String getPassword() {
    return password;
  }

  public String getGender() {
    return gender;
  }

  public String getPhone() {
    return phone;
  }

  public String getAddress() {
    return address;
  }

  @Override
  public String toString() {
    return String.format("Employee {id: %d, name: %s}");
  }
}
