package Data_Layer;

import Business_Layer.*;

import java.sql.*;
import java.util.ArrayList;
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

    public ArrayList<ratingnreview> giveratingsnreviews(String id) {
        ArrayList<ratingnreview> objlist = new ArrayList<ratingnreview>();

        try {
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);


            System.out.println("id is="+id);
//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery = "select * from user right outer join (SELECT * from ratings as r left outer join review as rw on r.areaID=rw.realestateid UNION SELECT * from ratings as r right outer join review as rw on r.areaID=rw.realestateid) as temp on user.ID=temp.userID\n" +
                    "where temp.userid is not null\n" +
                    "and temp.userid!=0";
            PreparedStatement st = conn.prepareStatement(sqlquery);
            System.out.println("prepared hotel query");

            ResultSet rs = st.executeQuery();
            System.out.println("executed the query");


            while (rs.next()) {
                ratingnreview obj=new ratingnreview();
                obj.setUname(rs.getString("Username"));
                obj.setRating(rs.getString("stars"));
                obj.setReview(rs.getString("review"));
                objlist.add(obj);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return objlist;
    }



    public void giveratingofpland(int rating,String planid, User currentuser) {
        try {
            Class.forName("com.mysql.jdbc.Driver");


            try{Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);


                System.out.println("hello1");
                sqlquery = " INSERT INTO `planratings`( `RatingID`,`uid`, `stars`, `planid`) VALUES(NULL,'" + currentuser.getId() + "','" + rating + "','" + planid + "')";
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





    public void givereviewofpland(String review,String planid, User currentuser) {

        try {
            Class.forName("com.mysql.jdbc.Driver");


            try{Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);


                sqlquery = " INSERT INTO `planreview`(`rid`,`uid`, `review`,`planid`) values (NULL,'" + currentuser.getId() + "','" + review +"','"+planid+ "')";
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
            sqlquery = "SELECT `homeid`,`slug`, `description`, `shortDescription`, `cityName`, `areaName`,`price`, `title`, `rooms`, `area` FROM realestatenew  WHERE homeid=" + "'" + id + "'";
            PreparedStatement st = conn.prepareStatement(sqlquery);
            System.out.println("prepared hotel query");

            ResultSet rs = st.executeQuery();
            System.out.println("executed the query");


            while (rs.next()) {
                obj.setHomeID(rs.getString("homeid"));
                obj.setRooms(rs.getString("rooms"));
                obj.setSlug(rs.getString("slug"));
                obj.setTitle(rs.getString("title"));
                obj.setPrice(rs.getString("price"));
                obj.setDesciption(rs.getString("description"));
                obj.setShortDescription(rs.getString("shortDescription"));
                obj.setAreaName(rs.getString("areaName"));
                obj.setArea(rs.getString("area"));

                System.out.println(rs.getString("description"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return obj;
    }

    public Bankingplan giveplan(String id) {
        Bankingplan obj = new Bankingplan();

        try {
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);


            System.out.println("id is="+id);
//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery = "SELECT `PlanID`, `BankID`, `Description`, `PlantermMin`, `PlantermMax`, `PlanRate`, `MinimumInvestment`, `MaximumInvestment`, `Islamic`, `Monthy`, `Quaterly`, `Halfyearly`, `Anually`, `OtherCurrencies` FROM `plan` WHERE `PlanID`="+id+"";
            PreparedStatement st = conn.prepareStatement(sqlquery);
            System.out.println("prepared hotel query");

            ResultSet rs = st.executeQuery();
            System.out.println("executed the query");


            while (rs.next()) {
                obj.setPlanid(rs.getString("Planid"));
                obj.setBankid(rs.getString("Bankid"));
                obj.setDescription(rs.getString("Description"));
                obj.setPlantermMin(rs.getString("PlantermMin"));
                obj.setPlantermMax(rs.getString("PlantermMax"));
                obj.setPlanRate(rs.getString("PlanRate"));
                obj.setMinimumInvestment(rs.getString("MinimumInvestment"));
                obj.setMaximumInvestment(rs.getString("MaximumInvestment"));
                obj.setIslamic(rs.getString("Islamic"));
                obj.setMonthly(rs.getString("Monthly"));
                obj.setQuaterly(rs.getString("Quaterly"));
                obj.setHalfyearly(rs.getString("Halfyearly"));
                obj.setAnually(rs.getString("Anually"));
                obj.setOther(rs.getString("Other"));
                System.out.println(rs.getString("description"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return obj;
    }

}
