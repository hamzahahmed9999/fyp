package Data_Layer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class addpreferencedata {
    String sqlquery;


    public boolean addpreferences(int IR, String city, String area, String size, int stories, int bedrooms) throws SQLException {
        System.out.println("signupcheck");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery = "INSERT INTO userpreferences (PID, UID, InvestmentRange, Area, Size, Stories, Bedrooms) VALUES (NULL, '2', '" + IR + "', '" + area + "', '" + size + "', '" + stories + "', '" + bedrooms + "');)";
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




}
