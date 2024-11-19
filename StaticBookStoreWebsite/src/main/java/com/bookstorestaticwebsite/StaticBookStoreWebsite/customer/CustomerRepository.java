package com.bookstorestaticwebsite.StaticBookStoreWebsite.customer;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
    @Query("SELECT COUNT(c) FROM Customer c")
    long countTotalCustomers();

}
