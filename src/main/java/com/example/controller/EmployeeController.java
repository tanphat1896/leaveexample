package com.example.controller;

import com.example.constant.error.ErrorCode;
import com.example.constant.error.ErrorDetail;
import com.example.constant.error.ErrorMessage;
import com.example.dto.Employee;
import com.example.response.CommonResponse;
import com.example.response.ErrorResponse;
import com.example.response.employee.EmployeeResponse;
import com.example.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/employee")
public class EmployeeController {

  private EmployeeService employeeService;

  @Autowired
  public EmployeeController(EmployeeService employeeService) {
    this.employeeService = employeeService;
  }

  @GetMapping("/getEmployeeById")
  public CommonResponse getEmployeeById(@RequestParam long empId) {

    try {
      Employee employee = employeeService.getEmployeeById(empId);

      return EmployeeResponse.from(employee);
    } catch (EmptyResultDataAccessException e) {
      return ErrorResponse.from(
          ErrorCode.DATABASE,
          ErrorMessage.NO_DATA,
          ErrorDetail.NO_DATA
      );
    }
  }
}
