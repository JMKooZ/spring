package app.controller;

import app.dao.MemberDaoImpl;
import app.dto.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
    MemberDaoImpl memberDao;
    @Autowired
    public LoginController (MemberDaoImpl memberDao){
        this.memberDao = memberDao;
    }
    @GetMapping("loginPage")
    public String login(){
        return "loginPage";
    }
    @PostMapping("loginPage")
    public String login(String id, String pw, HttpServletRequest request){
        Member member = memberDao.login(id,pw);
        if(id.equals(member.getId()) && pw.equals(member.getPw())){
            request.getSession().setAttribute("member",member);
            System.out.println("<script>alert('로그인 완료')</script>");
            return "index";
        }else {
            System.out.println("로그인 실패");
            return "index";
        }
    }
}
