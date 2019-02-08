package Data_Layer;

import java.sql.*;
import java.util.ArrayList;
import java.util.Hashtable;

public class bankingplandata {
    String sqlquery;
    ArrayList<Hashtable<String,String>> list1=new ArrayList<>();


    public boolean bankingplandata(String Planid,String Bankid,String Description,String PlantermMinString ,String PlantermMax,String PlanRate,String MinimumInvestment,String MaximumInvestment,String Islamic,String Monthly,String Quaterly,String Halfyearly,String Anually,String Other) throws SQLException {
        System.out.println("addbankingplan entry");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery = "INSERT INTO `plan` (`PlanID`, `BankID`, `Description`, `PlantermMin`, `PlantermMax`, `PlanRate`, `MinimumInvestment`, `MaximumInvestment`, `Islamic`, `Monthy`, `Quaterly`, `Halfyearly`, `Anually`, `OtherCurrencies`) VALUES (NULL,'"+Bankid+ "','" + Description + "','" + PlantermMinString + "','" + PlantermMax + "','" + PlanRate + "','" + MinimumInvestment + "','" + MaximumInvestment + "','" + Islamic + "','" + Monthly + "','" + Quaterly + "','" + Halfyearly + "','" + Anually + "','" + Other + "');";
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



    public ArrayList<Hashtable<String,String>> getmybankingplans() throws SQLException {

        System.out.println("getting bankingplans");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart","root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");

            sqlquery = "SELECT plan.PlanID,plan.BankID,plan.Description,plan.PlantermMin,plan.PlantermMax,plan.PlanRate,plan.MinimumInvestment,plan.MaximumInvestment,plan.Islamic, plan.Monthy,plan.Quaterly,plan.Halfyearly,plan.Anually,plan.OtherCurrencies,bank.BankName,bank.Website from plan,bank WHERE plan.BankID=bank.BankID";


            //sqlquery = "SELECT `c1`, `c2`, `price`, `location`, `size`, `title`, `description`, `pagination`, `pagination-href` FROM realestatedata WHERE location LIKE '%" + mySearch + "%' AND price<'" + myPrice + "' AND size='" + mySize + "'";

            PreparedStatement st= conn.prepareStatement(sqlquery);
            System.out.println("prepared banking plan query");

            ResultSet rs=st.executeQuery();
            System.out.println("executed banking plan query");
            String value1="";
            float number=0;

            while(rs.next())
            {
                Hashtable<String,String> hashtable=new Hashtable<String,String>();
                String value=rs.getString("PlanID");
                System.out.println("PlanID");
                System.out.println(value);
                hashtable.put("PlanID",value);

                value=rs.getString("BankID");
                hashtable.put("BankID",value);

                value1=rs.getString("Description");
                hashtable.put("Description",value1);

                value=rs.getString("PlantermMin");
                hashtable.put("PlantermMin",value);

                value=rs.getString("PlantermMax");
                hashtable.put("PlantermMax",value);
                System.out.println("PlantermMax");
                System.out.println(value);

                value=rs.getString("PlanRate");
                hashtable.put("PlanRate",value);


                value=rs.getString("MinimumInvestment");
                hashtable.put("MinimumInvestment",value);

                value=rs.getString("MaximumInvestment");
                hashtable.put("MaximumInvestment",value);


                value=rs.getString("Islamic");
                hashtable.put("Islamic",value);

                value=rs.getString("Monthy");
                hashtable.put("Monthy",value);

                value=rs.getString("Quaterly");
                hashtable.put("Quaterly",value);

                value=rs.getString("Halfyearly");
                hashtable.put("Halfyearly",value);

                value=rs.getString("Anually");
                hashtable.put("Anually",value);

                value=rs.getString("Halfyearly");
                hashtable.put("Halfyearly",value);


                value=rs.getString("OtherCurrencies");
                hashtable.put("OtherCurrencies",value);

                value=rs.getString("BankName");
                hashtable.put("BankName",value);

                value=rs.getString("Website");
                hashtable.put("Website",value);


                list1.add(hashtable);


            }

            return list1;
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return list1;
    }











}
