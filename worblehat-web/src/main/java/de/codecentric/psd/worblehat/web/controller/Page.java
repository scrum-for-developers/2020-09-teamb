package de.codecentric.psd.worblehat.web.controller;

public enum Page {
  HOME("home"),
  BOOKLIST("bookList"),
  INSERTBOOKS("insertBooks"),
  BORROWBOOK("borrow"),
  RETURNBOOKS("returnAllBooks");

  private String url;

  Page(String url) {
    this.url = url;
  }

  public String getUrl() {
    return url;
  }
}
