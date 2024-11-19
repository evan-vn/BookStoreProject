package com.bookstorestaticwebsite.StaticBookStoreWebsite.order;


import com.bookstorestaticwebsite.StaticBookStoreWebsite.book.Book;
import com.bookstorestaticwebsite.StaticBookStoreWebsite.category.Category;
import com.bookstorestaticwebsite.StaticBookStoreWebsite.common.CommonConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.nio.file.Paths;
import java.util.List;

@Controller
@RequestMapping("/admin/order")
public class BookOrderController {
    @Autowired
    private BookOrderService bookOrderService;

    @GetMapping("/all")
    public String getAllOrders( Model model){
        model.addAttribute("title", "Orders List");
        model.addAttribute("ordersList", bookOrderService.getAllBookOrder());
        return "admin/order-list";
    }

    @GetMapping("/detail/{oId}")
    public String getOrderDetailById(@PathVariable int oId, Model model ){
        model.addAttribute("title", "Order ID: " + oId );
        model.addAttribute("bookOrder", bookOrderService.getBookOrderById(oId));
        return "admin/order-detail";
    }

    @GetMapping("/edit/{oId}")
    public String editBook(@PathVariable int oId, Model model){
        BookOrder bookOrder = bookOrderService.getBookOrderById(oId);
        List<String> statusList = CommonConfig.STATUS_LIST;
        model.addAttribute("title", "Edit Order");
        model.addAttribute("bookOrder", bookOrder);
        model.addAttribute("statusList", statusList);
        return "admin/order-edit";
    }


}
