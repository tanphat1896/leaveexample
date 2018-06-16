package com.example.service.implement;

import com.example.dto.Employee;
import com.example.repository.EmployeeRepository;
import com.example.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {

  private EmployeeRepository employeeRepository;

  @Autowired
  public EmployeeServiceImpl(EmployeeRepository employeeRepository) {
    this.employeeRepository = employeeRepository;
  }

  @Override
  public List<Employee> getListEmployeeByManagerId(long managerId) {
    return null;
  }

  @Override
  public List<Employee> searchEmployee(String name, long deptId) {
    return null;
  }

  @Override
  public Employee getEmployeeById(long empId) {
    return employeeRepository.getEmployeeById(empId);
  }

  @Override
  public Employee getEmployeeByLoginInformation() {
    return null;
  }

  @Override
  public void createEmployee(Employee employee) {

  }

  @Override
  public void editEmployee(Employee employee) {

  }

  @Override
  public void deleteEmployee(long empId) {

  }
}
