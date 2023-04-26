package app.dao;

import app.dto.Member;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

@Repository
public class MemberDaoImpl implements MemberDao{
    SqlSession session;
    String namespace = "app.dao.MemberDaoImpl.";
    @Autowired
    public MemberDaoImpl(SqlSession session){
        this.session = session;
    }
    @Override
    public Member login(String id, String pw) {
        return session.selectOne(namespace+"selectMember",id);
    }
}
