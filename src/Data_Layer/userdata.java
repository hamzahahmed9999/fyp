package Data_Layer;

import Business_Layer.Message;
import Business_Layer.User;
import Business_Layer.admin;

import java.sql.*;
import java.util.ArrayList;
import java.util.Hashtable;

public class userdata {
    String sqlquery = null;
    ArrayList<Hashtable<String, String>> list1 = new ArrayList();

    public boolean signupcheck(String name, String email, String password, String contact,String gender,String city,String dob) throws SQLException {
        System.out.println("signupcheck");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery = "insert into user (Username,Email,Password,DOB,City,Gender,ContactNo) values('" + name + "','" + email + "','" + password + "','" + dob + "','" + city + "','" + gender + "','" + contact + "')";
            PreparedStatement st = conn.prepareStatement(sqlquery);
            System.out.println("Hello2");

            st.executeUpdate();
            System.out.println("executed the query");

            return true;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("False");
        return false;
    }





    public ArrayList<Hashtable<String, String>> signincheck(String email, String password) throws SQLException {
        System.out.println("signincheck");
        try {

            System.out.println("email is "+email);
            System.out.println("password is "+password);
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery = "SELECT `ID`, `Username`, `Email`, `Password`, `DOB`, `City`, `Gender`, `ContactNo`, `type` FROM `user` WHERE Email='"+email+"' and Password='"+password+"'";
            PreparedStatement st = conn.prepareStatement(sqlquery);
            System.out.println("Hello2");

            ResultSet rs = st.executeQuery();
            System.out.println("executed the query");

            if(rs!=null)
            {
                System.out.println("rs is not null");
            }
            else
            {
                System.out.println("rs is null");
            }

            while (rs.next()) {
                Hashtable<String, String> hashtable = new Hashtable<String, String>();

                String value = rs.getString("ID");
                hashtable.put("ID", value);

                System.out.println("gender is"+rs.getString("ID"));
                System.out.println("check is"+hashtable.get("ID"));

                value = rs.getString("Username");
                hashtable.put("Username", value);


                value = rs.getString("Email");
                hashtable.put("id is "+"Email", value);


                value = rs.getString("ContactNo");
                hashtable.put("Contactnumber", value);


                value = rs.getString("type");
                hashtable.put("Type", value);


                value = rs.getString("Password");
                hashtable.put("Password", value);

                value = rs.getString("Gender");
                hashtable.put("Gender", value);

                value = rs.getString("DOB");
                hashtable.put("DOB", value);


                value = rs.getString("City");
                hashtable.put("City", value);


                list1.add(hashtable);

            }

            return list1;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("False");
        return list1;
    }


    public ArrayList<Hashtable<String, String>> getHotels() throws SQLException {
        System.out.println("getting hotels");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery = "SELECT ID,Hotelname,Description,Image,City,Rent,URL FROM hotels";
            PreparedStatement st = conn.prepareStatement(sqlquery);
            System.out.println("prepared hotel query");

            ResultSet rs = st.executeQuery();
            System.out.println("executed the query");


            while (rs.next()) {
                Hashtable<String, String> hashtable = new Hashtable<String, String>();
                String value = rs.getString("Hotelname");
                hashtable.put("Hotelname", value);

                value = rs.getString("Description");
                hashtable.put("Description", value);

                value = rs.getString("Image");
                hashtable.put("Image", value);

                value = rs.getString("City");
                hashtable.put("City", value);

                value = rs.getString("Rent");
                hashtable.put("Rent", value);

                value = rs.getString("URL");
                hashtable.put("URL", value);

                value = rs.getString("ID");
                hashtable.put("ID", value);


                list1.add(hashtable);

            }

            return list1;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("False");
        return list1;
    }


    public Boolean sendmessagetoadmin(Message object, String message) {
        System.out.println("sending message");
        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
                System.out.println("Hello1");
                sqlquery = "INSERT INTO admincontactmessages (id, firstname, lastname, contactnumber, subject) VALUES (NULL , 'hamza', 'ahmed', '03341731677', 'hello my name is hamza and i have this problem');";
                PreparedStatement st = conn.prepareStatement(sqlquery);
                System.out.println("prepared hotel query");

                st.executeUpdate();
                System.out.println("executed the query");

            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return false;

        }


        return true;
    }




    public  ArrayList<Hashtable<String, String>> adminsignin() throws SQLException {
        System.out.println("signincheck");
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery = "SELECT `id`, `Name`, `Email`, `Password` FROM `admin`";
            PreparedStatement st = conn.prepareStatement(sqlquery);

            ResultSet rs = st.executeQuery();

            if(rs!=null)
            {
                System.out.println("rs is not null");
            }
            else
            {
                System.out.println("rs is null");
            }

            while (rs.next()) {
                Hashtable<String, String> hashtable = new Hashtable<String, String>();

                String value = rs.getString("id");
                hashtable.put("id", value);


                value = rs.getString("Name");
                hashtable.put("Username", value);


                value = rs.getString("Email");
                hashtable.put("Email", value);


                value = rs.getString("Password");
                hashtable.put("Password", value);

                list1.add(hashtable);

            }

            return list1;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("False");
        return list1;
    }





}
