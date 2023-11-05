package com.xuanzhe.service;

import com.xuanzhe.pojo.Books;
import java.util.List;

public interface BookService {
  public int addBook(Books books);
  public int deleteBookById(int id);
  public int updateBook(Books books);
  public Books queryBookById(int id);
  public List<Books> queryAllBook();
  public List<Books> queryBookByName(String BookName);
}
