package com.example.mapper;

import com.example.dto.Employee;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class EmployeeMapper implements RowMapper<Employee> {

  @Override
  public Employee mapRow(ResultSet resultSet, int i) throws SQLException {

    long empId = resultSet.getLong("emp_id");
    String empName = resultSet.getString("emp_name");
    Date birthday = resultSet.getDate("birthday");
    String position = resultSet.getString("position");
    long deptId = resultSet.getLong("dept_id");
    long managerId = resultSet.getLong("manager_id");
    String isManager = resultSet.getString("manager_flag");
    String email = resultSet.getString("email");
    String username = resultSet.getString("username");
    String password = resultSet.getString("password");

    return new Employee(empId, empName, birthday, position);
  }
}
