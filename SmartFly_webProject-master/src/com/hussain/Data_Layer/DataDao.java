package com.hussain.Data_Layer;

import java.sql.*;
import java.util.ArrayList;

public class DataDao {
    String sqlquery=null;


    public ArrayList<String> getFrameWork(String frameWork) {
        ArrayList<String> list = new ArrayList<String>();
        PreparedStatement ps = null;
        String data;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/smartflydb", "root", null);
            ps = conn.prepareStatement("SELECT * FROM cities  WHERE Name  LIKE ?");
            ps.setString(1,"%" +frameWork + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                data = rs.getString("Name");
                list.add(data);
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    public static String getflightprice() {
        return "10000";
    }
}
