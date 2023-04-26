package app.dao;

import app.dto.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class UserDaoImpl implements UserDao{
    SqlSession session;
    String namespace = "app.dao.UserDaoImpl.";
    @Autowired
    public UserDaoImpl(SqlSession session){
        this.session = session;
    }
    @Override
    public User exist(String id) {
        return session.selectOne(namespace+"selectUser",id);
    }
    @Override
    public List<User> selectList() {
        List<User> users = session.selectList(namespace+"allUser");
        return users;
    }


}
