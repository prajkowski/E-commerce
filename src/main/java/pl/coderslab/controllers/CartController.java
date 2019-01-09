package pl.coderslab.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.dao.ProductDao;
import pl.coderslab.model.Cart;
import pl.coderslab.model.CartItem;
import pl.coderslab.model.Product;

import java.util.List;

@Controller
public class CartController {
    @Autowired
    private Cart cart;
    @Autowired
    ProductDao productDao;

    @RequestMapping("/addToCart/{id}/{quantity}")
    @ResponseBody
    public String addtocart(@PathVariable int id, @PathVariable int quantity) {
        int n = quantity;
        List<Product> products = productDao.getList();
        Product product = null;

        boolean inCart = false;

        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == id) {
                for (int j = 0; j < cart.getCartItems().size(); j++) {
                    if (cart.getCartItems().get(j).getProduct().getId() == id) {
                        cart.getCartItems().get(j).setQuantity(cart.getCartItems().get(j).getQuantity() + quantity);
                        inCart = true;
                        return "Updated";
                    }
                }
                if(!inCart) {
                    product = products.get(i);
                    cart.addToCart(new CartItem(n, product));
                    return "Added";
                }
            }
        }
        return "Unavailable";
    }

    @RequestMapping("/cart")
    public String cart(Model model) {
        model.addAttribute("cart", cart);
        int items = cart.getCartItems().size();
        int numOfProducts = 0;
        double total = 0;

        for(int i = 0; i < cart.getCartItems().size(); i++) {
            int q = cart.getCartItems().get(i).getQuantity();
            double tot = cart.getCartItems().get(i).getProduct().getPrice() * q;
            numOfProducts += q;
            total += tot;
        }
        model.addAttribute("items", items);
        model.addAttribute("numOfProducts", numOfProducts);
        model.addAttribute("total", total);
        return "cart";
    }
}
