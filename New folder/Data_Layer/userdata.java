package Data_Layer;

import java.sql.*;
import java.util.ArrayList;
import java.util.Hashtable;

public class userdata {String sqlquery=null;
    ArrayList<Hashtable<String,String>> list1 = new ArrayList();

    public boolean signupcheck(String name, String email, String password,String contact) throws SQLException {
        System.out.println("signupcheck");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart","root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery="insert into user (Username,Email,Password,DOB,City,Gender,ContactNo) values('"+name+"','"+email+"','"+password+"','18','Lahore','Male','"+contact+"')";
            PreparedStatement st= conn.prepareStatement(sqlquery);
            System.out.println("Hello2");

            st.executeUpdate();
            System.out.println("executed the query");

            return true;
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("False");
        return false;
    }

        public boolean bankingplandata(String name, String investmentFund, int maxagematurity, int contact, int ATpaymentrange, int sumAssured, int maxannualpremium, String CM, String unitallocation, String email, String ppmode, String psf) throws SQLException {
            System.out.println("addbankingplan entry");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart","root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
                System.out.println("Hello1");
                sqlquery="INSERT INTO Bankingplans (PID,BID,name, Investmentfund, Maxageentry, Minageentry, Availabletermandpaymentrange, Sumassured, Minannualpremium, PremiumPaymentmode, partialsurrenderbenefits, Covermultiple, UnitAllocation, email) VALUES (NULL,1, '"+name+"','"+investmentFund+"','"+0+"','"+0+"','"+18+"','"+sumAssured+"','"+maxannualpremium+"','"+ppmode+"','"+psf+"','"+CM+"','"+unitallocation+"','"+email+"');";
                PreparedStatement st= conn.prepareStatement(sqlquery);
                System.out.println("Hello2");

                st.executeUpdate();
                System.out.println("executed the query");

                return true;
            }catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            System.out.println("False");
            return false;
        }


    public boolean Propertyplandata(String Name, String Desciption, String Location, int Price, String Link) throws SQLException {
        System.out.println("addPropertyplan entry");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart","root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery="INSERT INTO Realestate (ID,Name, Description, Location,Price ,Link) VALUES (NULL, '"+Name+"','"+Desciption+"','"+Location+"','"+Price+"','"+Link+"');";
            PreparedStatement st= conn.prepareStatement(sqlquery);
            System.out.println("Hello2");
            /*System.out.println(Name);
            System.out.println(Desciption);
            System.out.println(Location);
            System.out.println(Price);
            System.out.println(Link);*/


            st.executeUpdate();
            System.out.println("executed the query");

            return true;
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("False");
        return false;
    }


    public boolean addrating(int Bed) throws SQLException {
        System.out.println("ratingcheck");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart","root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery="INSERT INTO rating (Bed) values ('"+Bed+"')";
            PreparedStatement st= conn.prepareStatement(sqlquery);
            System.out.println("Hello2");

            st.executeUpdate();
            System.out.println("executed the query");

            return true;
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("False");
        return false;
    }

    public boolean addpreferences(int IR,String city,String area,String size,int stories,int bedrooms) throws SQLException {
        System.out.println("signupcheck");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart","root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1ssada");
            sqlquery="INSERT INTO userpreferences (PID, UID, InvestmentRange,city, Area, Size, Stories, Bedrooms) VALUES (NULL, '2', '"+IR+"','"+city+"', '"+area+"', '"+size+"', '"+stories+"', '"+bedrooms+"');)";
            PreparedStatement st= conn.prepareStatement(sqlquery);
            System.out.println("Hello2");

            st.executeUpdate();
            System.out.println("executed the query");

            return true;
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("False");
        return false;
    }







        public ArrayList<Hashtable<String,String>> signincheck( String email, String password) throws SQLException {
        System.out.println("signincheck");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart","root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery="SELECT Username,Email,ContactNo,Type,Image,Password FROM USER WHERE Email='"+email+"'and Password='"+password+"'";
            PreparedStatement st= conn.prepareStatement(sqlquery);
            System.out.println("Hello2");

            ResultSet rs=st.executeQuery();
            System.out.println("executed the query");


            while(rs.next())
            {
                Hashtable<String,String> hashtable=new Hashtable<String,String>();
                String value=rs.getString("Username");
                hashtable.put("Username",value);

                value=rs.getString("Email");
                hashtable.put("Email",value);

                value=rs.getString("ContactNo");
                hashtable.put("Contactnumber",value);

                value=rs.getString("Type");
                hashtable.put("Type",value);

                value=rs.getString("Image");
                hashtable.put("Image",value);

                value=rs.getString("Password");
                hashtable.put("Password",value);


                list1.add(hashtable);

            }

            return list1;
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("False");
        return list1;
    }






    public ArrayList<Hashtable<String,String>> getHotels() throws SQLException {
        System.out.println("getting hotels");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart","root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery="SELECT ID,Hotelname,Description,Image,City,Rent,URL FROM hotels";
            PreparedStatement st= conn.prepareStatement(sqlquery);
            System.out.println("prepared hotel query");

            ResultSet rs=st.executeQuery();
            System.out.println("executed the query");


            while(rs.next())
            {
                Hashtable<String,String> hashtable=new Hashtable<String,String>();
                String value=rs.getString("Hotelname");
                hashtable.put("Hotelname",value);

                value=rs.getString("Description");
                hashtable.put("Description",value);

                value=rs.getString("Image");
                hashtable.put("Image",value);

                value=rs.getString("City");
                hashtable.put("City",value);

                value=rs.getString("Rent");
                hashtable.put("Rent",value);

                value=rs.getString("URL");
                hashtable.put("URL",value);

                value=rs.getString("ID");
                hashtable.put("ID",value);


                list1.add(hashtable);

            }

            return list1;
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("False");
        return list1;
    }

}
