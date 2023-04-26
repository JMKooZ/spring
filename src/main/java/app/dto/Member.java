package app.dto;

public class Member {
    private String id, pw, name, phonenumber, sex ,birth, address, email, time;

    public Member(){

    }
    public Member(String id , String pw){
        this.id = id;
        this.pw = pw;
    }

    public Member(String id, String pw, String name, String phonenumber, String sex, String birth, String address, String email) {
        this.id = id;
        this.pw = pw;
        this.name = name;
        this.phonenumber = phonenumber;
        this.sex = sex;
        this.birth = birth;
        this.address = address;
        this.email = email;
    }

    public Member(String id, String pw, String name, String phonenumber, String sex, String birth, String address, String email, String time) {
        this.id = id;
        this.pw = pw;
        this.name = name;
        this.phonenumber = phonenumber;
        this.sex = sex;
        this.birth = birth;
        this.address = address;
        this.email = email;
        this.time = time;
    }
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}

