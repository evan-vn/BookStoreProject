package com.bookstorestaticwebsite.StaticBookStoreWebsite.customer;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/admin/customer")
public class CustomerController {
    @Autowired
    private CustomerService service;

    @GetMapping("/all")
    public String getAllCustomers(Model model){
        List<Customer> customersList = service.getAllCustomers();
        List<String> fullNames = customersList.stream().map(Customer::getFullName).collect(Collectors.toList());
        model.addAttribute("customersList", customersList);
        model.addAttribute("fullNames", fullNames);
        model.addAttribute("title", "Customer List");
        return "admin/customer-list";

    }

    @PostMapping("/edit/{cusId}")
    public String updateCustomer(@PathVariable int cusId, @ModelAttribute Customer customer){
        service.updateCustomer(customer, cusId);
        return "redirect:/admin/customer/all";
    }

    @GetMapping("/edit/{cusId}")
    public String editCustomer(@PathVariable int cusId, Model model){
        System.out.println( service.getCustomerById(cusId).toString());
        model.addAttribute("customer", service.getCustomerById(cusId));
        model.addAttribute("title", "Edit Customer");
        return "admin/customer-edit";
    }

    @GetMapping("/delete/{id}")
    public String deleteCustomer(@PathVariable int id){
        service.deleteCustomer(id);
        return"redirect:/admin/customer/all";
    }




}
