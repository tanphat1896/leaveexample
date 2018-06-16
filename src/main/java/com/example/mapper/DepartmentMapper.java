package com.example.mapper;

import com.example.dto.Department;
import org.springframework.jdbc.core.RowMapper;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author c-nphat
 */
public class DepartmentMapper implements RowMapper<Department> {

  public static final String BASE_SQL = "SELECT dept_id, dept_name FROM department d";

  @Override
  public Department mapRow(ResultSet resultSet, int numRow) throws SQLException {

    long deptId = resultSet.getLong("dept_id");
    String deptName = resultSet.getString("dept_name");

    return new Department(deptId, deptName);
  }
}
