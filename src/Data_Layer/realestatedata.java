package Data_Layer;

import java.sql.*;
import java.util.ArrayList;
import java.util.Hashtable;

public class realestatedata {

    String sqlquery=null;
    ArrayList<Hashtable<String,String>>list1 = new ArrayList();

    public ArrayList<Hashtable<String,String>> getRealestate() throws SQLException {
        System.out.println("getting hotels");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart","root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery="SELECT `c1`, `c2`, `price`, `location`, `size`, `title`, `description`, `pagination`, `pagination-href` FROM realestatedata WHERE size='5 Marla'";
            PreparedStatement st= conn.prepareStatement(sqlquery);
            System.out.println("prepared hotel query");

            ResultSet rs=st.executeQuery();
            System.out.println("executed the query");


            while(rs.next())
            {
                Hashtable<String,String> hashtable=new Hashtable<String,String>();
                String value=rs.getString("c1");
                hashtable.put("c1",value);

                value=rs.getString("c2");
                hashtable.put("c2",value);

                value=rs.getString("price");
                hashtable.put("price",value);

                value=rs.getString("location");
                hashtable.put("location",value);

                value=rs.getString("size");
                hashtable.put("size",value);

                value=rs.getString("title");
                hashtable.put("title",value);

                value=rs.getString("description");
                hashtable.put("description",value);

                value=rs.getString("pagination-href");
                hashtable.put("pagination-href",value);


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