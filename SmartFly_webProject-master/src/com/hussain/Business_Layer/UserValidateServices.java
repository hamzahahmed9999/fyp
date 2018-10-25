package com.hussain.Business_Layer;

import com.hussain.Data_Layer.userValidateDao;

import java.sql.SQLException;
import java.util.Hashtable;

import static java.lang.System.out;

public class UserValidateServices {
    com.hussain.Data_Layer.userValidateDao userValidateDao =new userValidateDao();


    public UserClass Signup(String name, String email, String password, String mobile, String address, String state, String city, String country, String gender, String age)
    {
        UserClass user=null;
        try {
            if(userValidateDao.signupcheck(name,email,password,mobile,address,state,city,country,gender,age))
            {
                out.println("Check5");
                user=new UserClass("0",name,email,password,mobile,address,state,city,country,gender,age);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
    public UserClass login(String email, String password)
    {
        UserClass user=null;
        Hashtable<String, String> hashTable = userValidateDao.logincheck(email,password);
        if(hashTable != null)
        {
            user=new UserClass(hashTable.get("id"),hashTable.get("name"),hashTable.get("email"),hashTable.get("password"),hashTable.get("phone"),hashTable.get("address"),hashTable.get("state"),hashTable.get("city"),hashTable.get("country"),hashTable.get("gender"),hashTable.get("age"));
        }
        return user;
    }
}
