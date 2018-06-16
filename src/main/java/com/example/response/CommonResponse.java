package com.example.response;

import com.example.constant.ApiStatusCode;
import com.example.dto.Error;

public class CommonResponse {

  private String statusCode = ApiStatusCode.SUCCESS;

  private Error error;

  public CommonResponse() {}



  public CommonResponse(String statusCode, Error error) {
    this.statusCode = statusCode;
    this.error = error;
  }



  public String getStatusCode() {
    return statusCode;
  }



  public Error getError() {
    return error;
  }
}
