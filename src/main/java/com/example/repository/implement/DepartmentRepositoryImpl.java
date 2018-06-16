package com.example.repository.implement;

import com.example.dto.Department;
import com.example.mapper.DepartmentMapper;
import com.example.repository.DepartmentRepository;
import org.apache.coyote.http2.ConnectionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class DepartmentRepositoryImpl extends JdbcDaoSupport implements
    DepartmentRepository {

  @Autowired
  public DepartmentRepositoryImpl(DataSource dataSource) {
    this.setDataSource(dataSource);
  }

  @Override
  public List<Department> getListDepartment() {

    String sql = DepartmentMapper.BASE_SQL;
    DepartmentMapper deptMapper = new DepartmentMapper();
    Object[] params = new Object[] {};

    return this.getJdbcTemplate().query(sql, params, deptMapper);
  }
}
