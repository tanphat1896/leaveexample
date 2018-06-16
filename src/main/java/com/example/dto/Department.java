package com.example.dto;

public class Department {

  private long deptId;
  private String deptName;

  public Department(long deptId, String deptName) {
    this.deptId = deptId;
    this.deptName = deptName;
  }

  public long getDeptId() {
    return deptId;
  }

  public String getDeptName() {
    return deptName;
  }
}
