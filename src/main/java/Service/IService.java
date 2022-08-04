package Service;

import java.util.ArrayList;

public interface IService<E> {

    ArrayList<E> findAll();

    ArrayList<E> findByName(String name);

    void add(E e);

    void update(E e);

    void delete(int id);

    E findById(int id);
}
