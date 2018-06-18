package com.example.repository.implement;

import com.example.dto.Employee;
import com.example.mapper.EmployeeMapper;
import com.example.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;

@Repository
public class EmployeeRepositoryImpl extends JdbcDaoSupport implements
    EmployeeRepository {

  public static final String BASE_SQL = "SELECT emp_id, emp_name, birthday," +
      " position, dept_id, dept_name, manager_id, manager_flag, email, username, password" +
      " FROM employee e";

  @Autowired
  public EmployeeRepositoryImpl(DataSource dataSource) {
    this.setDataSource(dataSource);
  }

  @Override
  public Employee getEmployeeById(long empId) {
    String sql = BASE_SQL + " WHERE emp_id = ?";

    System.out.println(sql);

    EmployeeMapper mapper = new EmployeeMapper();
    Object[] params = new Object[] {empId};

    return this.getJdbcTemplate().queryForObject(sql, params, mapper);
  }
}
