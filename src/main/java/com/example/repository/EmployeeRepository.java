package com.example.repository;

import com.example.dto.Employee;

public interface EmployeeRepository {

  Employee getEmployeeById(long empId);
}
