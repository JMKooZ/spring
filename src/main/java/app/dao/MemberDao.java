package app.dao;

import app.dto.Member;

public interface MemberDao {
    Member login(String id, String pw);
}
