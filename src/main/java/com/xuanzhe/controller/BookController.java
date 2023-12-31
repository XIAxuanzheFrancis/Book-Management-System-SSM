package com.xuanzhe.controller;

import com.xuanzhe.pojo.Books;
import com.xuanzhe.service.BookService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
    model.addAttribute("Allbooks",list);
    return "allbooks";
  }
  @RequestMapping("/toaddbook")
  public String addPage(){
    return "addbook";
  }

  @RequestMapping("/addbook")
  public String addBook(Books books){
    bookService.addBook(books);
    return "redirect:/book/allbooks";
  }
  @RequestMapping("/tomodify/{id}")
  public String toModifyPage(@PathVariable int id, Model model){
    Books qbooks = bookService.queryBookById(id);
    model.addAttribute("QBooks",qbooks);
    return "toModifyPage";
  }
  @RequestMapping("/updatebook")
  public String updateBooks(Books books){
    bookService.updateBook(books);
    return "redirect:/book/allbooks";
  }

  @RequestMapping("/deleteBooks/{id}")
  public String deleteBooks(@PathVariable int id){
    bookService.deleteBookById(id);
    return "redirect:/book/allbooks";
  }

  @RequestMapping("/queryBookByName")
  public String queryBookByName(String queryBookName, Model model){
    List<Books> list = bookService.queryBookByName(queryBookName);
    model.addAttribute("Allbooks",list);
    return "allbooks";
  }
}
