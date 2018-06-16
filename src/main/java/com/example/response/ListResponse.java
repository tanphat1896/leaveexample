package com.example.response;

import java.util.List;

public class ListResponse extends CommonResponse {

  private List result;

  public ListResponse(List result) {
    this.result = result;
  }



  public static ListResponse from(List result) {
    return new ListResponse(result);
  }



  public List getResult() {
    return result;
  }
}
