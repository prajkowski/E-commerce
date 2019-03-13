package pl.coderslab.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.Order;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Long> {

    Order findFirstById(Long id);
}
