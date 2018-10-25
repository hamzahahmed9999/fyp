package com.hussain.Business_Layer;

public class UserClass {
    private String ID;
    private String username;
    private String password;
    private String email;
    private String address;
    private String mobile;
    private String state;
    private String city;
    private String country;
    private String gender;
    private String age;


    public UserClass(String username, String password){
        this.username = username;
        this.password = password;
    }
    public UserClass(String id, String uname, String mail, String pass, String mobno, String add, String state, String city, String country, String gen, String age){
        this.ID = id;
        this.username = uname;
        this.password = pass;
        this.email=mail;
        this.address=add;
        this.mobile=mobno;
        this.state=state;
        this.city=city;
        this.country=country;
        this.gender=gen;
        this.age=age;
    }
    public String get_Username() {
        return username;
    }
    public void set_Username(String username) {
        this.username = username;
    }
    public String get_Password() {
        return password;
    }
    public void set_Password(String password) {
        this.password = password;
    }

}
