package Service;

import DAO.ProductRepository;
import Model.Product;

import java.util.ArrayList;

public class ProductServiceImpl implements IService<Product>{

    private final ProductRepository productRepository = new ProductRepository();
    @Override
    public ArrayList<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public ArrayList<Product> findByName(String name) {
        return productRepository.findCustomerByName(name);
    }

    @Override
    public void add(Product product) {
        productRepository.addProduct(product);
    }

    @Override
    public void update(Product product) {
        productRepository.updateProductById(product);
    }

    @Override
    public void delete(int id) {
        productRepository.deleteProductById(id);
    }

    @Override
    public Product findById(int id) {
        return productRepository.findCustomerById(id);
    }
}
