package Service;

import DAO.CategoryRepository;
import Model.Category;

import java.util.ArrayList;

public class CategoryServiceImpl implements IService<Category>{
    private final CategoryRepository categoryRepository = new CategoryRepository();
    @Override
    public ArrayList<Category> findAll() {
        return categoryRepository.findAll();
    }

    @Override
    public ArrayList<Category> findByName(String name) {
        return null;
    }

    @Override
    public void add(Category category) {
        categoryRepository.addCategory(category);
    }

    @Override
    public void update(Category category) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public Category findById(int id) {
        return null;
    }
}
