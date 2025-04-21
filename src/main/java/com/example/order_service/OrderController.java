package com.example.order_service;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OrderController {

    // This will respond to GET requests at /orders
    @GetMapping("/orders")
    public String getOrders() {
        return "This is a list of orders!";
    }
}
