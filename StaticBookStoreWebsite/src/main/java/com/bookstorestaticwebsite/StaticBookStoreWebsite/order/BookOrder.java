package com.bookstorestaticwebsite.StaticBookStoreWebsite.order;

import com.bookstorestaticwebsite.StaticBookStoreWebsite.customer.Customer;
import jakarta.persistence.*;
import org.springframework.lang.NonNull;

import java.sql.Date;

@Entity
@Table(name="bookorders")
public class BookOrder {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int bookOrderId;
    @NonNull
    private Date orderDate;
    @NonNull
    private String firstName;
    @NonNull
    private String lastName;
    @NonNull
    private String addressLine1;
    private String addressLine2;
    @NonNull
    private String city;
    @NonNull
    private String state;
    @NonNull
    private String zipcode;
    @NonNull
    private String country;
    private String phone;
    @NonNull
    private String paymentMethod;

    @NonNull
    private float subtotal;
    @NonNull
    private float shippingFee;
    @NonNull
    private float tax;
    @NonNull
    private float total;
    @NonNull
    private String status;

    @ManyToOne
    @JoinColumn(name="customerId", nullable = false)
    private Customer customer;

    public BookOrder() {
    }

    public BookOrder(int bookOrderId, @NonNull Date orderDate, @NonNull String firstName, @NonNull String lastName, @NonNull String addressLine1, String addressLine2, @NonNull String city, @NonNull String state, @NonNull String zipcode, @NonNull String country, String phone, @NonNull String paymentMethod, float subtotal, float shippingFee, float tax, float total, @NonNull String status, Customer customer) {
        this.bookOrderId = bookOrderId;
        this.orderDate = orderDate;
        this.firstName = firstName;
        this.lastName = lastName;
        this.addressLine1 = addressLine1;
        this.addressLine2 = addressLine2;
        this.city = city;
        this.state = state;
        this.zipcode = zipcode;
        this.country = country;
        this.phone = phone;
        this.paymentMethod = paymentMethod;
        this.subtotal = subtotal;
        this.shippingFee = shippingFee;
        this.tax = tax;
        this.total = total;
        this.status = status;
        this.customer = customer;
    }

    public BookOrder(@NonNull Date orderDate, @NonNull String firstName, @NonNull String lastName, @NonNull String addressLine1, String addressLine2, @NonNull String city, @NonNull String state, @NonNull String zipcode, @NonNull String country, String phone, @NonNull String paymentMethod, float subtotal, float shippingFee, float tax, float total, @NonNull String status, Customer customer) {
        this.orderDate = orderDate;
        this.firstName = firstName;
        this.lastName = lastName;
        this.addressLine1 = addressLine1;
        this.addressLine2 = addressLine2;
        this.city = city;
        this.state = state;
        this.zipcode = zipcode;
        this.country = country;
        this.phone = phone;
        this.paymentMethod = paymentMethod;
        this.subtotal = subtotal;
        this.shippingFee = shippingFee;
        this.tax = tax;
        this.total = total;
        this.status = status;
        this.customer = customer;
    }

    public int getBookOrderId() {
        return bookOrderId;
    }

    public void setBookOrderId(int bookOrderId) {
        this.bookOrderId = bookOrderId;
    }

    @NonNull
    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(@NonNull Date orderDate) {
        this.orderDate = orderDate;
    }

    @NonNull
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(@NonNull String firstName) {
        this.firstName = firstName;
    }

    @NonNull
    public String getLastName() {
        return lastName;
    }

    public void setLastName(@NonNull String lastName) {
        this.lastName = lastName;
    }

    @NonNull
    public String getAddressLine1() {
        return addressLine1;
    }

    public void setAddressLine1(@NonNull String addressLine1) {
        this.addressLine1 = addressLine1;
    }

    public String getAddressLine2() {
        return addressLine2;
    }

    public void setAddressLine2(String addressLine2) {
        this.addressLine2 = addressLine2;
    }

    @NonNull
    public String getCity() {
        return city;
    }

    public void setCity(@NonNull String city) {
        this.city = city;
    }

    @NonNull
    public String getState() {
        return state;
    }

    public void setState(@NonNull String state) {
        this.state = state;
    }

    @NonNull
    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(@NonNull String zipcode) {
        this.zipcode = zipcode;
    }

    @NonNull
    public String getCountry() {
        return country;
    }

    public void setCountry(@NonNull String country) {
        this.country = country;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @NonNull
    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(@NonNull String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public float getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(float subtotal) {
        this.subtotal = subtotal;
    }

    public float getShippingFee() {
        return shippingFee;
    }

    public void setShippingFee(float shippingFee) {
        this.shippingFee = shippingFee;
    }

    public float getTax() {
        return tax;
    }

    public void setTax(float tax) {
        this.tax = tax;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    @NonNull
    public String getStatus() {
        return status;
    }

    public void setStatus(@NonNull String status) {
        this.status = status;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}
