package com.example.controller;

import com.example.response.CommonResponse;
import com.example.response.ErrorResponse;
import com.example.response.ErrorResponseBuilder;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class GlobalExceptionController {

  @ExceptionHandler(MissingServletRequestParameterException.class)
  public CommonResponse handleError400(MissingServletRequestParameterException e) {

    return ErrorResponseBuilder.createValidationError(
        e.getParameterName() + " parameter is required");
  }
}
