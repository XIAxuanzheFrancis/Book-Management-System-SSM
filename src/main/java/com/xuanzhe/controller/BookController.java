package com.xuanzhe.controller;

import com.xuanzhe.pojo.Books;
import com.xuanzhe.service.BookService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/book")
public class BookController {
  @Autowired
  @Qualifier("BookServiceImpl")
  private BookService bookService;

  @RequestMapping("/allbooks")
  public String findAllBooks(Model model){
    List<Books> list = bookService.queryAllBook();
    model.addAttribute("Allbooks","list");
    return "allbooks";
  }
}
