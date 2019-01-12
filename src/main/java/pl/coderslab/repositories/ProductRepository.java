package pl.coderslab.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.Product;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {

    List<Product> findByType(String type);

}
