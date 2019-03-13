package pl.coderslab.services;

import pl.coderslab.model.Order;
import pl.coderslab.model.Product;

import java.util.ArrayList;

public interface OrderService {

    void save(Order order);

    void update(Order order);

    void delete(Order order);

    Order findFirstById();

}
