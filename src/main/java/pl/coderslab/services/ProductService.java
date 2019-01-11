package pl.coderslab.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.model.Product;
import pl.coderslab.repositories.ProductRepository;

import javax.transaction.Transactional;

@Service
@Transactional
public interface ProductService {

    void save(Product product);

    void update(Product product);

    Product find(Long id);

    void delete(Long id);
}
