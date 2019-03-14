package pl.coderslab.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.model.Cart;
import pl.coderslab.model.Order;
import pl.coderslab.services.OrderService;

import javax.validation.Valid;

@Controller
public class OrderController {

    @Autowired
    private Cart cart;

    @Autowired
    private OrderService orderService;

    @GetMapping("/order")
    public String order(Model model) {
        model.addAttribute("cart", cart);
        int items = cart.getCartItems().size();
        int numOfProducts = 0;
        double total = 0;

        for (int i = 0; i < cart.getCartItems().size(); i++) {
            int q = cart.getCartItems().get(i).getQuantity();
            double tot = cart.getCartItems().get(i).getProduct().getPrice() * q;
            numOfProducts += q;
            total += tot;
        }
        model.addAttribute("items", items);
        model.addAttribute("numOfProducts", numOfProducts);
        model.addAttribute("total", total);

        return "order";
    }

    @PostMapping("/order")
    public String order(@ModelAttribute @Valid Order order, BindingResult result) {
        if (result.hasErrors()) {
            return "order";
        }
        orderService.save(order);
        return "cart";
    }

}
