package com.example.order_service;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class OrderController {

    RestTemplate restTemplate = new RestTemplate(); // For internal HTTP call

    @GetMapping("/orders")
    public String getOrders() {
        // book-service ku internal ah HTTP GET call panrom
        //old one --String bookServiceResponse = restTemplate.getForObject("http://book-service", String.class);
        String bookServiceResponse = restTemplate.getForObject("http://book-service:3000/books", String.class);
        // Result merge pannitu return panrom
        return "Order Service: List of orders!\nBook Service says: " + bookServiceResponse;
    }
}


