package com.hussain.Data_Layer;

import java.sql.*;
import java.util.ArrayList;
import java.util.Hashtable;

import static java.lang.System.out;

public class AddFlightDao {
    String sqlquery = null;

    public boolean flightAddition(String origin,String destination,String flight_name,String date,String Depttime,String flighttime,String approve) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/smartflydb", "root", null);
            out.println("Date:"+date);



            sqlquery="insert into flight (source,Destination,FName,Date,DeptTime,FlightTime,approve) values('"+origin+"','"+destination+"','"+flight_name+"',"+date+",'"+Depttime+"','"+flighttime+"','"+approve+"')";
            PreparedStatement st= conn.prepareStatement(sqlquery);
            st.execute();
            return true;

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public ArrayList<Hashtable<String, String>> ShowAdditionflight(String check) {
        ArrayList<Hashtable<String, String>> list = new ArrayList();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/smartflydb", "root", null);
            PreparedStatement preparedStatement=null;

            out.println("Show Admin/Manager flights IN");
            if(check.equals("admin"))
            {
                sqlquery="select * from flight";
                out.println("Show Admin");
                preparedStatement=conn.prepareStatement(sqlquery);
            }
            else if (check.equals("manager"))
            {
                sqlquery="select * from flight Where approve=?";
                preparedStatement=conn.prepareStatement(sqlquery);
                preparedStatement.setString(1,"0");
                out.println("Show Manager");
            }




            ResultSet rs=preparedStatement.executeQuery();

            while (rs.next()){
                out.println("Show Admin flights check");
                Hashtable<String,String> hashTable=new Hashtable<String,String>();

                String value = rs.getString("FID");
                hashTable.put("id", value);
                //out.println("ID is:"+value);

                value = rs.getString("source");
                hashTable.put("source", value);

                value = rs.getString("Destination");
                hashTable.put("destination", value);

                value = rs.getString("FName");
                hashTable.put("Fname", value);

                value = rs.getString("Date");
                hashTable.put("Date", value);

                value = rs.getString("DeptTime");
                hashTable.put("DeptTime", value);


                value = rs.getString("FlightTime");
                hashTable.put("FlightTime", value);


                value = rs.getString("approve");
                hashTable.put("approve", value);

                list.add(hashTable);

            }


        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean addflightinfo(String flight_id,String flight_category,String price,String features,String seats) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/smartflydb", "root", null);
           // out.println("flight_id:"+flight_id);

            sqlquery="insert into flightdetail (flightCategory,flightID,Price,feature) values('"+flight_category+"','"+flight_id+"','"+price+"','"+features+"')";
            PreparedStatement st= conn.prepareStatement(sqlquery);
            st.execute();

            sqlquery="select detailID from flightdetail Where flightCategory=?,flightID=?,Price=?,feature=?";
            st=conn.prepareStatement(sqlquery);
            st.setInt(1, Integer.valueOf(flight_category));
            st.setInt(1,Integer.valueOf(flight_id));
            st.setInt(1,Integer.valueOf(price));
            st.setString(1,features);
            ResultSet rs=st.executeQuery();

            String detailid="0";
            if(rs.next())
            {
                detailid=rs.getString("detailID");
            }


            sqlquery="insert into seats (Fdetail_ID,TotalSeats,AvailableSeats) values('"+detailid+"','"+seats+"','"+seats+"')";
            PreparedStatement st1= conn.prepareStatement(sqlquery);
            st1.execute();
            return true;

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean Updateflightinfo(String detail_id,String price,String features,String seats,int check) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/smartflydb", "root", null);


            sqlquery="update flightdetail set Price=?,feature=? Where detailID=?";
            PreparedStatement st= conn.prepareStatement(sqlquery);
            st.setInt(1,Integer.valueOf(price));
            st.setString(2,features);
            st.setInt(3,Integer.valueOf(detail_id));
            st.executeUpdate();


            sqlquery="select flightID from flightdetail where detailID=?";
            PreparedStatement preparedStatement=conn.prepareStatement(sqlquery);
            preparedStatement.setString(1,detail_id);
            out.println("Show Admin flights IN");
            ResultSet rs=preparedStatement.executeQuery();
            String value="0";
            if (rs.next()) {
                value = rs.getString("flightID");
            }


            sqlquery="update flight set approve=? Where FID=?";
            PreparedStatement st1= conn.prepareStatement(sqlquery);
            st1.setInt(1,Integer.valueOf("0"));
            st1.setInt(2,Integer.valueOf(value));
            st1.executeUpdate();

            if(check!=0)
            {
                sqlquery="update seats set TotalSeats=?,AvailableSeats=? Where detailID=?";
                st= conn.prepareStatement(sqlquery);
                st.setInt(1,Integer.valueOf(seats));
                st.setString(2,seats);
                st.setInt(3,Integer.valueOf(detail_id));
                st.executeUpdate();
            }
            else
            {
                sqlquery="insert into seats (Fdetail_ID,TotalSeats,AvailableSeats) values('"+detail_id+"','"+seats+"','"+seats+"')";
                st= conn.prepareStatement(sqlquery);
                st.execute();
            }



            return true;


        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


    public ArrayList<Hashtable<String, String>> ShowAdditionflightinfo() {
        ArrayList<Hashtable<String, String>> list = new ArrayList();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/smartflydb", "root", null);

            sqlquery="select * from flightdetail";
            PreparedStatement preparedStatement=conn.prepareStatement(sqlquery);
            //preparedStatement.setString(1,"0");
            out.println("Show Admin flights IN");
            ResultSet rs=preparedStatement.executeQuery();

            while (rs.next()){
                out.println("Show Admin flightsinfo check");
                Hashtable<String,String> hashTable=new Hashtable<String,String>();

                String value = rs.getString("detailID");
                hashTable.put("id", value);

                value = rs.getString("flightCategory");
                hashTable.put("category", value);

                value = rs.getString("flightID");
                hashTable.put("flightID", value);

                value = rs.getString("Price");
                hashTable.put("Price", value);

                value = rs.getString("feature");
                hashTable.put("feature", value);

                list.add(hashTable);

            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    public ArrayList<Hashtable<String, String>> ShowAdditionflightseats() {
        ArrayList<Hashtable<String, String>> list = new ArrayList();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/smartflydb", "root", null);

            sqlquery="select * from seats";
            PreparedStatement preparedStatement=conn.prepareStatement(sqlquery);
            //preparedStatement.setString(1,"0");
            out.println("Show Admin flights seats IN");
            ResultSet rs=preparedStatement.executeQuery();

            while (rs.next()){
                out.println("Show Admin flights seats check");
                Hashtable<String,String> hashTable=new Hashtable<String,String>();

                String value = rs.getString("SID");
                hashTable.put("id", value);

                value = rs.getString("Fdetail_ID");
                hashTable.put("FDetailID", value);

                value = rs.getString("TotalSeats");
                hashTable.put("TotalSeats", value);

                list.add(hashTable);

            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }


    public boolean approveFlight(String flight_id) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/smartflydb", "root", null);


            sqlquery="update flight set approve=? Where FID=?";
            PreparedStatement st= conn.prepareStatement(sqlquery);
            st.setInt(1,Integer.valueOf("1"));
            st.setInt(2,Integer.valueOf(flight_id));
            st.executeUpdate();
            return true;

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
