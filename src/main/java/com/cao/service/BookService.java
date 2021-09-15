package com.cao.service;

import com.cao.pojo.Books;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

public interface BookService {

    //增加一本书
    int addBook(Books books);

    //删除一本书
    int deleteBookById(int id);


    //更新一本书
    int updateBook(Books books);

    //查询一本书
    Books queryBookById(int id);


    //查询全部书
    List<Books> queryAllbook();
    //检索
    Books queryBookName(String bookName);

}
