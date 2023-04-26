package app.dao;

import app.dto.User;

import java.util.List;

public interface UserDao {
    List<User> selectList();
    User exist(String id);
}
