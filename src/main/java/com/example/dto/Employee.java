package com.example.dto;

import java.util.Date;

public class Employee {

  private long empId;
  private String empName;
  private Date birthday;
  private String position;
  private long deptId;
  private long managerId;
  private String isManager;
  private String email;
  private String username;
  private String password;

  public Employee(long empId, String empName, Date birthday, String position,
                  long deptId, long managerId, String isManager, String email,
                  String username, String password) {
    this.empId = empId;
    this.empName = empName;
    this.birthday = birthday;
    this.position = position;
    this.deptId = deptId;
    this.managerId = managerId;
    this.isManager = isManager;
    this.email = email;
    this.username = username;
    this.password = password;
  }


  public long getEmpId() {
    return empId;
  }

  public void setEmpId(long empId) {
    this.empId = empId;
  }

  public String getEmpName() {
    return empName;
  }

  public void setEmpName(String empName) {
    this.empName = empName;
  }

  public Date getBirthday() {
    return birthday;
  }

  public void setBirthday(Date birthday) {
    this.birthday = birthday;
  }

  public String getPosition() {
    return position;
  }

  public void setPosition(String position) {
    this.position = position;
  }

  public long getDeptId() {
    return deptId;
  }

  public void setDeptId(long deptId) {
    this.deptId = deptId;
  }

  public long getManagerId() {
    return managerId;
  }

  public void setManagerId(long managerId) {
    this.managerId = managerId;
  }

  public boolean isManager() {
    return Boolean.valueOf(isManager);
  }

  public String getIsManager() {
    return isManager;
  }

  public void setManager(String manager) {
    isManager = manager;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  @Override
  public String toString() {
    return String.format("Employee [empId: %d, empName: %s, managerId: %d]",
        empId, empName, managerId);
  }
}
