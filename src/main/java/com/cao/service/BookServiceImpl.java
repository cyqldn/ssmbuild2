package com.cao.service;

import com.cao.dao.BookMapper;
import com.cao.pojo.Books;

import java.util.List;

public class BookServiceImpl implements BookService{
    //service调Dao层 组合Dao层
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public int addBook(Books books) {
        return bookMapper.addBook(books);
    }

    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    public List<Books> queryAllbook() {
        return bookMapper.queryAllbook();
    }

    public Books queryBookName(String bookName) {
        return bookMapper.queryBookName(bookName);
    }
}
