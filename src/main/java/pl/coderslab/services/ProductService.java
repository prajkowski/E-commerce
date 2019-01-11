package pl.coderslab.services;

import pl.coderslab.model.Product;

public interface ProductService {

    void save(Product product);

    void update(Product product);

    Product find(Long id);

    void delete(Long id);
}
