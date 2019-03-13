package pl.coderslab.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.model.Order;
import pl.coderslab.model.Product;
import pl.coderslab.repositories.OrderRepository;

import javax.transaction.Transactional;
import java.util.ArrayList;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderRepository orderRepository;


    @Override
    public void save(Order order) {

    }

    @Override
    public void update(Order order) {

    }

    @Override
    public void delete(Order order) {

    }

    @Override
    public Order findFirstById() {
        return null;
    }
}
