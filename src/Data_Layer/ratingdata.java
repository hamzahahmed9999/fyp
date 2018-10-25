package Data_Layer;

import Business_Layer.Message;
import Business_Layer.Propertyplan;
import Business_Layer.Realestate;
import Business_Layer.User;

import java.sql.*;
import java.util.Hashtable;

public class ratingdata {

    String sqlquery;

    public void giveratingd(int rating,String areaid, User currentuser) {
        try {
            Class.forName("com.mysql.jdbc.Driver");


            try{Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);


                sqlquery = " INSERT INTO ratings( uid, stars, areaID) VALUES('" + currentuser.getId() + "','" + rating + "','" + areaid + "')";
                PreparedStatement st = conn.prepareStatement(sqlquery);
                System.out.println("Hello2");

                st.executeUpdate();

            }
            catch (SQLException a)
            {
                a.printStackTrace();
            }


        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }



    public void givereviewd(String review,String areaid, User currentuser) {

        try {
            Class.forName("com.mysql.jdbc.Driver");


            try{Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);


                sqlquery = " INSERT INTO `review`(uid, review,realestateid) values ('" + currentuser.getId() + "','" + review +"','"+areaid+ "')";
                PreparedStatement st = conn.prepareStatement(sqlquery);

                st.executeUpdate();

            }
            catch (SQLException a)
            {
                a.printStackTrace();
            }


        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }





    }

    public void givewishd(String PID, User currentuser) {

        try {
            Class.forName("com.mysql.jdbc.Driver");


            try{Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);


                sqlquery = " INSERT INTO wishlist( `uid`, `areaid`) VALUES('" + currentuser.getId() + "','" + PID + "')";
                PreparedStatement st = conn.prepareStatement(sqlquery);

                st.executeUpdate();

            }
            catch (SQLException a)
            {
                a.printStackTrace();
            }


        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }


    public Realestate giveprop(String id) {
        Realestate obj = new Realestate();

            try {
                Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);


                System.out.println("id is="+id);
//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
                System.out.println("Hello1");
                sqlquery = "SELECT `c1`, `c2`, `price`, `location`, `title`, `description`, `pagination`, `pagination-href` FROM realestatedata WHERE c1=" + "'" + id + "'";
                PreparedStatement st = conn.prepareStatement(sqlquery);
                System.out.println("prepared hotel query");

                ResultSet rs = st.executeQuery();
                System.out.println("executed the query");


                while (rs.next()) {
                    obj.setC1(rs.getString("c1"));
                    obj.setPaginationhref(rs.getString("pagination-href"));
                    obj.setTitle(rs.getString("title"));
                    obj.setPrice(rs.getString("price"));
                    obj.setDescription(rs.getString("description"));
                    obj.setC2(rs.getString("c2"));
                    obj.setLocation(rs.getString("location"));

                    System.out.println(rs.getString("description"));
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }
            return obj;
    }
}
