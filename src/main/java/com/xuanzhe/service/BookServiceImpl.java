package com.xuanzhe.service;

import com.xuanzhe.dao.BookMapper;
import com.xuanzhe.pojo.Books;
import java.util.List;
import java.util.PrimitiveIterator;

public class BookServiceImpl implements BookService{
  private BookMapper bookMapper;

  public void setBookMapper(BookMapper bookMapper) {
    this.bookMapper = bookMapper;
  }

  @Override
  public int addBook(Books books) {
    return bookMapper.addBook(books);
  }

  @Override
  public int deleteBookById(int id) {
    return bookMapper.deleteBookById(id);
  }

  @Override
  public int updateBook(Books books) {
    return bookMapper.updateBook(books);
  }

  @Override
  public Books queryBookById(int id) {
    return bookMapper.queryBookById(id);
  }

  @Override
  public List<Books> queryAllBook() {
    return bookMapper.queryAllBook();
  }

  @Override
  public List<Books> queryBookByName(String BookName) {
    return bookMapper.queryBookByName(BookName);
  }
}
