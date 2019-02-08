package Data_Layer;

import Business_Layer.preference;

import java.sql.*;

public class addpreferencedata {
    String sqlquery;


    public boolean addpreferences(int id,int IR, String city, String area, String size, int stories, int bedrooms) throws SQLException {
        System.out.println("signupcheck");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);


                System.out.println("Hello1");
                sqlquery = "INSERT INTO userpreferences (PID, UID, InvestmentRange,City, Area, Size, Bedrooms) VALUES (NULL, '"+id+"', '" + IR + "', '" + city + "', '" + size + "', '" + area + "', '" + bedrooms + "')";
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




    public preference givepreference(int id) {
        preference temp1=new preference();
        try{
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery = "SELECT `InvestmentRange`,`City`, `Area`, `Size`,`Bedrooms`  FROM userpreferences WHERE UID=" + id ;
            PreparedStatement st1 = conn.prepareStatement(sqlquery);
            System.out.println("prepared hotel query");

            ResultSet rs1 = st1.executeQuery();
            System.out.println("executed the query");
            String IR="";
            String Area="";
            String City="";
            String Size="";
            float Size1=0;
            String bed="";
            while (rs1.next()) {
                IR = rs1.getString("InvestmentRange");
                System.out.println("executed the query");
                City = rs1.getString("City");
                System.out.println("City is " + City);
                Area = rs1.getString("Area");
                System.out.println("Area is " +Area);
                Size = rs1.getString("Size");
                bed=rs1.getString("Bedrooms");

            }

            preference temp=new preference(IR,Size,Area,"",bed,City);


            return temp;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
        catch (SQLException p) {
            p.printStackTrace();
        }
        System.out.println("False");

        return temp1;
    }



}
