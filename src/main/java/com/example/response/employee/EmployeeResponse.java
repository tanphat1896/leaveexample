package com.example.response.employee;

import com.example.dto.Employee;
import com.example.response.CommonResponse;

public class EmployeeResponse extends CommonResponse {

  private Employee employee;

  public EmployeeResponse(Employee employee) {
    this.employee = employee;
  }

  public static EmployeeResponse from(Employee employee) {
    return new EmployeeResponse(employee);
  }

  public Employee getEmployee() {
    return employee;
  }
}
