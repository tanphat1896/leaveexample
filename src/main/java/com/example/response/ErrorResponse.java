package com.example.response;

import com.example.constant.ApiStatusCode;
import com.example.constant.error.ErrorCode;
import com.example.constant.error.ErrorMessage;
import com.example.dto.Error;


public class ErrorResponse extends CommonResponse {

  public ErrorResponse(String statusCode, Error error) {
    super(statusCode, error);
  }



  public static ErrorResponse from(String code, String message,
                                                   String detail) {
    Error error = new Error(code, message, detail);

    return new ErrorResponse(ApiStatusCode.ERROR, error);
  }
}
