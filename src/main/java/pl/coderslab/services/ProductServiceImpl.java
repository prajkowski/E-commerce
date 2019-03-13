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
        productRepository.save(product);
    }

    @Override
    public Product findFirstById(Long id) {
        return productRepository.findFirstById(id);
    }

    @Override
    public void delete(Long id) {
        Product product = productRepository.findFirstById(id);
        productRepository.delete(product);
    }

    public List<Product> findByType(String type) {
        return productRepository.findByType(type);
    }
}
