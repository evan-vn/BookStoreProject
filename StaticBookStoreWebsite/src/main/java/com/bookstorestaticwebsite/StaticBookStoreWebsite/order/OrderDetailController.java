package com.bookstorestaticwebsite.StaticBookStoreWebsite.order;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@Controller
@RequestMapping("/admin/order")
public class OrderDetailController {
    @Autowired
    private OrderDetailService orderDetailService;

//
//    @GetMapping("/all")
//    public String getAllOrders(Model model){
//        model.addAttribute("title", "Orders List");
//        model.addAttribute("ordersList", orderDetailService.getAllOrderDetail());
//        return "admin/order-list";
//    }

    //For API
    //List all orders
    @GetMapping("/all")
    public List<OrderDetail> getAllOrders(){
        List<OrderDetail> orderDetails = orderDetailService.getAllOrderDetail();

        return orderDetails;
    }

    //Create
    @PostMapping("/create")
    public List<OrderDetail> createNewOrder(@RequestBody OrderDetail orderDetail){
        orderDetailService.createOrder(orderDetail);

        return orderDetailService.getAllOrderDetail();
    }

    //Search
    @GetMapping("/search/{oId}")
    public OrderDetail getOrderById(@PathVariable int oId){
        return orderDetailService.getOrderDetailById(oId);
    }

    //Edit
    @PutMapping("/edit/{oId}")
    public OrderDetail updateOrder(@RequestBody OrderDetail orderDetail, @PathVariable int oId){
        orderDetailService.updateOrderDetail(orderDetail, oId);
        return orderDetailService.getOrderDetailById(oId);
    }

    //Delete
    @DeleteMapping("/delete/{oId}")
    public List<OrderDetail> deleteOrder(@PathVariable int oId){
        orderDetailService.deleteOrder(oId);
        return orderDetailService.getAllOrderDetail();
    }












}
