package com.example.response;

import com.example.constant.ApiStatusCode;
import com.example.constant.error.ErrorCode;
import com.example.constant.error.ErrorMessage;
import com.example.dto.Error;

public class ErrorResponseBuilder {

  public static ErrorResponse createValidationError(String detail) {
    Error error = new Error(ErrorCode.VALIDATION, ErrorMessage.VALIDATION,
        detail);
    return new ErrorResponse(ApiStatusCode.ERROR, error);
  }



  public static ErrorResponse createDatabaseError(String detail) {

    Error error = new Error(ErrorCode.DATABASE, ErrorMessage.DATABASE, detail);

    return new ErrorResponse(ApiStatusCode.ERROR, error);
  }




}
