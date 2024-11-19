package com.bookstorestaticwebsite.StaticBookStoreWebsite.order;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer> {
    @Query("SELECT od FROM OrderDetail od WHERE od.bookOrder.bookOrderId = :bookOrderId")
    List<OrderDetail> findByBookOrderBookOrderId(@Param("bookOrderId") int bookOrderId);


}
