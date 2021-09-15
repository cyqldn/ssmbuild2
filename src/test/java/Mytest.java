import com.cao.pojo.Books;
import com.cao.service.BookService;
import com.cao.service.BookServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class Mytest {
    @Test
    public void test(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookServiceImpl = (BookService) applicationContext.getBean("BookServiceImpl");
        List<Books> list = bookServiceImpl.queryAllbook();
        for (Books books : list) {
            System.out.println(books);
        }


    }
}
