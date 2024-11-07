package com.bookstorestaticwebsite.StaticBookStoreWebsite.book;

import com.bookstorestaticwebsite.StaticBookStoreWebsite.admin.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Base64;
import java.util.List;

@Service
public class BookService {

    @Autowired
    private BookRepository bookRepository;

    public List<Book> getAllBooks(){
        return bookRepository.findAll();
    }

    public void createNewBook(Book book){
        //check if this title already exist or not
        if(checkTitleExist(book)){
            System.out.println("Already exist");
            return;
        }
        String imagePath = "/images/books/"+book.getImagePath();
        book = new Book(book.getTitle(), book.getAuthor(), book.getDescription(), book.getIsbn(), book.getPrice(),book.getPublishDate(), imagePath,null, book.getCategory());
        bookRepository.save(book);
    }

    public Book getBookById(int id){
        return bookRepository.findById(id).orElse(null);
    }

    public void updateBook(Book book, int id){
        Book existing = getBookById(id);
        String imagePath = "/images/books/"+book.getImagePath();
           existing.setTitle(book.getTitle());
           existing.setAuthor(book.getAuthor());
           existing.setCategory(book.getCategory());
           existing.setDescription(book.getDescription());
           existing.setIsbn(book.getIsbn());
           existing.setImagePath(imagePath);
           existing.setPrice(book.getPrice());
           existing.setPublishDate(book.getPublishDate());
           existing.setLastUpdateDate(book.getLastUpdateDate());
        bookRepository.save(existing);

    }

    public void deleteBookById(int id){
        bookRepository.deleteById(id);
    }


    public boolean checkTitleExist(Book book){
        boolean existed = false;
        List<Book> list_books = getAllBooks();
        for (Book b : list_books){
            if(book.getTitle().equals(b.getTitle())){
                existed = true;
                break;
            }
        }
        return existed;
    }
    public List<Book> findBookByCategoryName(String categoryName){
        return bookRepository.findByCategory_CategoryName(categoryName);
    }

}
