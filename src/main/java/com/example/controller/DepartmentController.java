package com.example.controller;

import com.example.constant.error.ErrorCode;
import com.example.constant.error.ErrorDetail;
import com.example.constant.error.ErrorMessage;
import com.example.dto.Department;
import com.example.response.CommonResponse;
import com.example.response.ErrorResponse;
import com.example.response.ErrorResponseBuilder;
import com.example.response.ListResponse;
import com.example.response.department.ListDepartmentResponse;
import com.example.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/v1/department")
public class DepartmentController {

  private DepartmentService departmentService;

  @Autowired
  public DepartmentController(DepartmentService departmentService) {
    this.departmentService = departmentService;
  }

  @GetMapping(value = "/getListDepartment",
      produces = MediaType.APPLICATION_JSON_VALUE)
  public CommonResponse getListDepartment() {

    try {

      List<Department> listDepartment = departmentService.getListDepartment();

      return new ListResponse(listDepartment);

    } catch (DataAccessException e) {
      return ErrorResponseBuilder.createDatabaseError(ErrorDetail.DATABASE);
    } catch (Exception e) {
      return ErrorResponse.from(ErrorCode.INTERNAL,
          ErrorMessage.INTERNAL,
          ErrorDetail.INTERNAL
      );
    }
  }
}
