package com.example.response.department;

import com.example.dto.Department;
import com.example.response.CommonResponse;

import java.util.List;

public class ListDepartmentResponse extends CommonResponse {

  private List<?> listDepartment;

  public ListDepartmentResponse(List<Department> listDepartment) {
    this.listDepartment = listDepartment;
  }

  public ListDepartmentResponse(String statusCode, List<Department> listDepartment) {
    this.listDepartment = listDepartment;
  }

  public static ListDepartmentResponse from(List<Department> listDepartment) {
    return new ListDepartmentResponse(listDepartment);
  }

  public List<?> getListDepartment() {
    return listDepartment;
  }
}
