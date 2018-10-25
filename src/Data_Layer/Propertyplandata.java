package Data_Layer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Propertyplandata {

    String sqlquery;
    public boolean ourPropertyplandata(String Name, String Desciption, String Location, int Price, String Link) throws SQLException {
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

}
