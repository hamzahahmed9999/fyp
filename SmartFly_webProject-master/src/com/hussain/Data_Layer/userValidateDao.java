package com.hussain.Data_Layer;

import com.sun.xml.internal.fastinfoset.util.StringArray;

import java.sql.*;
import java.util.Hashtable;

import static java.lang.System.out;

public class userValidateDao {
    String sqlquery=null;


    public boolean signupcheck(String name, String email, String password, String mobile, String address,String state,String city,String country,String gender,String age) throws SQLException {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/smartflydb","root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            out.println("Check1");
            sqlquery="insert into user (Name,Email,Address,Mobileno,State,City,Country,Gender,Age,Password) values('"+name+"','"+email+"', '"+address+"',"+mobile+",'"+state+"','"+city+"','"+country+"','"+gender+"',"+age+",'"+password+"')";
            PreparedStatement st= conn.prepareStatement(sqlquery);
            st.execute();
            out.println("Check2");
            return true;

        }catch (ClassNotFoundException e) {
            out.println("Check3");
            e.printStackTrace();
        }

        return false;
    }
    public Hashtable<String,String> logincheck(String email, String password)
    {
        Hashtable<String,String> hashTable = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/smartflydb","root", null);



            out.println("login check");
            sqlquery="select * from user where Email=? AND Password=?";
            PreparedStatement preparedStatement=conn.prepareStatement(sqlquery);
            preparedStatement.setString(1,email);
            preparedStatement.setString(2,password);

            ResultSet rs=preparedStatement.executeQuery();

            while(rs.next()){
                hashTable=new Hashtable<String,String>();
                out.println("login check2");

                String value = rs.getString("ID");
                hashTable.put("id", value);

                value = rs.getString("Name");
                hashTable.put("name", value);

                value = rs.getString("Mobileno");
                hashTable.put("phone", value);

                value = rs.getString("Gender");
                hashTable.put("gender", value);

                value = rs.getString("Age");
                hashTable.put("age", value);


                value = rs.getString("Address");
                hashTable.put("address", value);

                value = rs.getString("Email");
                hashTable.put("email", value);

                value = rs.getString("Password");
                hashTable.put("password", value);

                value = rs.getString("State");
                hashTable.put("state", value);

                value = rs.getString("City");
                hashTable.put("city", value);

                value = rs.getString("Country");
                hashTable.put("country", value);


            }

        }catch (ClassNotFoundException e) {
            out.println("Check3");
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return hashTable;
    }
}
