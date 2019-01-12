package pl.coderslab.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.model.Product;
import pl.coderslab.repositories.ProductRepository;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Override
    public void save(Product product) {
        productRepository.save(product);
    }

    @Override
    public void update(Product product) {

    }

    @Override
    public Product find(Long id) {
        return null;
    }

    @Override
    public void delete(Long id) {

    }

    public List<Product> findByType(String type) {
        return productRepository.findByType(type);
    }
}
