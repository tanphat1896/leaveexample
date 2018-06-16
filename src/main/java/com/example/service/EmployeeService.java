package com.example.service;

import com.example.dto.Employee;

import java.util.List;

public interface EmployeeService {

  List<Employee> getListEmployeeByManagerId(long managerId);

  List<Employee> searchEmployee(String name, long deptId);

  Employee getEmployeeById(long empId);

  Employee getEmployeeByLoginInformation();

  void createEmployee(Employee employee);

  void editEmployee(Employee employee);

  void deleteEmployee(long empId);


}
