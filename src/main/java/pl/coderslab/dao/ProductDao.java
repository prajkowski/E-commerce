package pl.coderslab.dao;

import org.springframework.stereotype.Component;
import pl.coderslab.model.Product;

import java.util.ArrayList;
import java.util.List;

@Component
public class ProductDao {

    public List<Product> getList() {
        List<Product> list = new ArrayList<>();
        list.add(new Product(1,"TV", 1000.0));
        list.add(new Product(2, "Radio", 300.0));
        list.add(new Product(3, "Play Station", 1500.0));
        return list;
    }
}
