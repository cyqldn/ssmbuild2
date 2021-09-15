package com.cao.controller;

import com.cao.pojo.Books;
import com.cao.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import sun.plugin2.message.ShutdownJVMMessage;

import java.awt.print.Book;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
//Controller调service层
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;
 //查询所有数据 并返回一个书籍展示页面
    @RequestMapping("/allBook")
    public  String list(Model model){
        List<Books> list = bookService.queryAllbook();
        model.addAttribute("list",list);
        return "allBook";

    }

    //跳转到增加书籍页面
    @RequestMapping("/toAddBook")
    public String toAddPaper(){
        return "addBook";
    }
    //添加书籍请求
    @RequestMapping("/addBook")
    public String addBook(Books books){
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }
          //跳转到修改页面
    @RequestMapping("/toUpdate")
    public String toUpdatePaper(int id,Model model){
        Books books = bookService.queryBookById(id);
         model.addAttribute("QBook",books);

        return "updateBook";
    }
    @RequestMapping("/updateBook")
   public String updateBook(Books books){
       System.out.println("updateBook()=>"+books);
        int i = bookService.updateBook(books);
        if(i>0){
            System.out.println("修改成功"+books);
        }
        return "redirect:/book/allBook";
   }
/*   @RequestMapping("toDelete")
    public String deleteBook(int  id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
   }*/
    //resultful风格
@RequestMapping("toDelete/{bookId}")
public String deleteBook(@PathVariable("bookId") int  id){
    bookService.deleteBookById(id);
    return "redirect:/book/allBook";
}
//检索
    @RequestMapping("/queryBook")
    public  String queryBook(String queryBookName,Model model){
        Books books = bookService.queryBookName(queryBookName);
        if(books==null){
            model.addAttribute("msg","未找到相关名字");
        }else {
         List<Books> list=new ArrayList<Books>();
         list.add(books);
         model.addAttribute("list",list);
        }
         return "allBook";
    }
}

