package DAO;

import Model.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CategoryRepository {
    private MyConnection myConnection = new MyConnection();

    private final String INSERT_CATEGORY = "insert into category (category_name) value (?);";
    private final String SELECT_ALL_CATEGORY = "select * from category;";

    public void addCategory(Category category) {
        try {
            Connection connection = myConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CATEGORY);
            preparedStatement.setString(1, category.getCategoryName());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public ArrayList<Category> findAll() {
        ArrayList<Category> categorys = new ArrayList<>();
        try {
            Connection connection = myConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CATEGORY);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String categoryName = resultSet.getString("category_name");
                Category category = new Category(categoryName);
                categorys.add(category);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return categorys;
    }

}
