package com.bookstorestaticwebsite.StaticBookStoreWebsite.review;


import com.bookstorestaticwebsite.StaticBookStoreWebsite.book.BookService;
import com.bookstorestaticwebsite.StaticBookStoreWebsite.customer.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin/review")
public class ReviewController {
    @Autowired
    private ReviewService reviewService;

    @Autowired
    private BookService bookService;

    @Autowired
    private CustomerService customerService;

    @GetMapping("/all")
    public String getAllReviews(Model model){
        model.addAttribute("title", "Review List");
        model.addAttribute("reviewsList", reviewService.getAllReviews());
        return "admin/review-list";
    }

    @PostMapping("/edit/{id}")
    public String updateReview(@PathVariable int id,@ModelAttribute Review review){
        reviewService.updateReview(review, id);
        return "redirect:/admin/review/all";
    }

    @GetMapping("/edit/{id}")
    public String editReview(@PathVariable int id, Model model){
        model.addAttribute("title", "Edit Review");
        model.addAttribute("review", reviewService.getReviewById(id));
        return "admin/review-edit";
    }

    @GetMapping("/delete/{id}")
    public String deleteReview(@PathVariable int id){
        reviewService.deleteReview(id);
        return "redirect:/admin/review/all";
    }




}
