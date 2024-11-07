package com.bookstorestaticwebsite.StaticBookStoreWebsite.book;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookRepository extends JpaRepository<Book, Integer> {
    List<Book> findByCategory_CategoryName(String categoryName);

}
