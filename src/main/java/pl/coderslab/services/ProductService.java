package pl.coderslab.services;

import pl.coderslab.model.Product;

import java.util.List;

public interface ProductService {

    void save(Product product);

    void update(Product product);

    Product find(Long id);

    void delete(Long id);

    List<Product> findByType(String type);
}
