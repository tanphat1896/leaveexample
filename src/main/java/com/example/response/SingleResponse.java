package com.example.response;

public class SingleResponse extends CommonResponse {

  private Object result;

  public SingleResponse(Object result) {
    this.result = result;
  }



  public static SingleResponse from(Object result) {
    return new SingleResponse(result);
  }



  public Object getResult() {
    return result;
  }
}
