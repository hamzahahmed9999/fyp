package Data_Layer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class bankingplandata {
    String sqlquery;


    public boolean bankingplandata(String name, String investmentFund, int maxagematurity, int contact, int ATpaymentrange, int sumAssured, int maxannualpremium, String CM, String unitallocation, String email, String ppmode, String psf) throws SQLException {
        System.out.println("addbankingplan entry");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery = "INSERT INTO Bankingplans (PID,BID,name, Investmentfund, Maxageentry, Minageentry, Availabletermandpaymentrange, Sumassured, Minannualpremium, PremiumPaymentmode, partialsurrenderbenefits, Covermultiple, UnitAllocation, email) VALUES (NULL,1, '" + name + "','" + investmentFund + "','" + 0 + "','" + 0 + "','" + 18 + "','" + sumAssured + "','" + maxannualpremium + "','" + ppmode + "','" + psf + "','" + CM + "','" + unitallocation + "','" + email + "');";
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
