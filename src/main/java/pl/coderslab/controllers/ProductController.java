package pl.coderslab.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.model.Product;
import pl.coderslab.services.ProductService;
import pl.coderslab.services.ProductServiceImpl;

import java.util.List;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping("/bezlusterkowce")
    public String bezlusterkowce(Model model) {
        List<Product> products = productService.findByType("bezlusterkowce");
        model.addAttribute("products", products);
        return "products";
    }

    @GetMapping("/dslr")
    public String dslr(Model model) {
        List<Product> products = productService.findByType("DSLR");
        model.addAttribute("products", products);
        return "products";
    }

    @GetMapping("/p/{name}")
    public String product(Model model) {
        Product product = productService.find(1L);
        model.addAttribute(product);
        return "productSpecs";
    }

}
