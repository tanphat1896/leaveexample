package com.example.dto;

public class Manager {

  private long managerId;
  private String managerName;

  public Manager(long managerId, String managerName) {
    this.managerId = managerId;
    this.managerName = managerName;
  }

  public long getManagerId() {
    return managerId;
  }

  public String getManagerName() {
    return managerName;
  }

  @Override
  public String toString() {
    return String.format("Manager {id: %d, name: %s}", managerId, managerName);
  }
}
