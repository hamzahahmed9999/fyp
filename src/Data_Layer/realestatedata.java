package Data_Layer;

import Business_Layer.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.Hashtable;



public class realestatedata {
    public static int count1=10;
    public static int count2=10;
    public static int count3=10;
    public static int count4=11;

    String sqlquery=null;
    String sqlquery1=null;
    String sqlquery2=null;
    ArrayList<Hashtable<String,String>>list1 = new ArrayList();
    public boolean saveRealestate(String City,String mySearch,int PriceMin,int PriceMax,int SizeMin,int SizeMax,int Beds,int id) throws SQLException {
        System.out.println("saveCHeck");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);
            System.out.println(id);
            System.out.println(SizeMin);
            System.out.println(SizeMax);
//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            sqlquery = "INSERT INTO searchs VALUES ('" + id + "', '" + City + "', '" + mySearch + "', '" + PriceMin + "', '" + PriceMax + "', '" + SizeMin + "', '" + SizeMax + "','" + Beds + "') ON DUPLICATE KEY UPDATE `City`='" + City + "',`area`='" + mySearch + "',`PriceMin`='" + PriceMin + "',`PriceMax`='" + PriceMax + "',`SizeMin`='" + SizeMin + "',`SizeMax`='" + SizeMax + "',`Beds`='" + Beds + "'";
            PreparedStatement st = conn.prepareStatement(sqlquery);
            System.out.println("Hello2");

            st.executeUpdate();
            System.out.println("executed the query");
            return true;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("False");
            return false;
        }

    }

    public ArrayList<Hashtable<String,String>> getRealestate(int id) throws SQLException {
        System.out.println("getting hotels");
        if (id!=0) {
            System.out.println(id);
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);

                sqlquery1 = "SELECT `InvestmentRange`,`City`, `Area`, `Size`,`Bedrooms`  FROM userpreferences WHERE UID=" + id ;
                PreparedStatement st1 = conn.prepareStatement(sqlquery1);
                System.out.println("prepared hotel query");

                ResultSet rs1 = st1.executeQuery();
                System.out.println("executed the query");
                int IR=0;
                String Area="";
                String City="";
                float Size=0;
                float Size1=0;
                int bed=0;
                while (rs1.next()) {
                    IR = rs1.getInt("InvestmentRange");
                    City = rs1.getString("City");
                    Area = rs1.getString("Area");
                    Size = rs1.getFloat("Size");
                    bed=rs1.getInt("Bedrooms");

                }
                Size= (float) (Size*20.90);
                Size1=Size-1;
                Size=Size+1;
                System.out.println(IR);
                System.out.println(Area);
                System.out.println(Size);
                System.out.println(City);


                System.out.println("Hello1");
                sqlquery = "SELECT `homeid`,`slug`, `description`, `shortDescription`, `cityName`, `areaName`,`price`, `title`, `rooms`, `area` FROM realestatenew WHERE cityName='" +City+ "' AND areaName LIKE '%" + Area + "%'  AND area<'" + Size + "'  AND price<'" + IR + "' AND rooms='" + bed + "' ORDER BY area desc ";
                PreparedStatement st = conn.prepareStatement(sqlquery);
                System.out.println("prepared hotel query");

                ResultSet rs = st.executeQuery();
                System.out.println("executed the query");
                String value1="";
                float number=0;
                int number1=0;

                while (rs.next()) {
                    Hashtable<String,String> hashtable=new Hashtable<String,String>();
                    String value=rs.getString("slug");
                    hashtable.put("slug",value);

                    value=rs.getString("homeid");
                    hashtable.put("homeID",value);

                    value=rs.getString("description");
                    hashtable.put("Description",value);

                    value1=rs.getString("shortDescription");
                    hashtable.put("shortDescription",value1);
               /* String[] crore = value1.trim().split(" ");
                if (crore[1].matches("Crore") || crore[1].matches("crore"))
                {
                    number=Float.valueOf(crore[0]);
                    number=number*10000000;
                }
                else
                {
                    number=Float.valueOf(crore[0]);
                    number=number*100000;
                }*/

                    value=rs.getString("cityName");
                    hashtable.put("cityName",value);

                    value=rs.getString("areaName");
                    hashtable.put("areaName",value);

                    value=rs.getString("price");
                    hashtable.put("price",value);

                    value=rs.getString("title");
                    hashtable.put("title",value);

                    value=rs.getString("rooms");
                    hashtable.put("rooms",value);

                    value=rs.getString("area");
                    number=Float.valueOf(value);
                    number= (float) (number/20.90);
                    number1= (int) number;
                    value= String.valueOf(number1);
                    hashtable.put("area",value);

                    //if(number<=PriceMax)
                    list1.add(hashtable);
                    number=0;

                }

                return list1;
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        else
        {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
                System.out.println("not logged");
                System.out.println("Hello1");
                //sqlquery1 = "SELECT `areaID`, AVG(stars) from ratings group by areaID ORDER BY AVG(stars) DESC";

                sqlquery = "select ratings.areaID, AVG(ratings.stars),realestatenew.homeId,realestatenew.slug,realestatenew.description,realestatenew.shortDescription,realestatenew.cityName,realestatenew.areaName,realestatenew.price,realestatenew.title,realestatenew.rooms,realestatenew.area from ratings LEFT OUTER JOIN realestatenew ON ratings.areaID=realestatenew.homeId group by areaID ORDER BY AVG(stars) DESC";
                PreparedStatement st = conn.prepareStatement(sqlquery);
                System.out.println("prepared hotel query");

                ResultSet rs = st.executeQuery();
                System.out.println("executed the query");
                String value1="";
                float number=0;
                int number1=0;

                while (rs.next()) {
                    Hashtable<String,String> hashtable=new Hashtable<String,String>();
                    String value=rs.getString("slug");
                    hashtable.put("slug",value);

                    value=rs.getString("homeid");
                    hashtable.put("homeID",value);

                    value=rs.getString("description");
                    hashtable.put("Description",value);

                    value1=rs.getString("shortDescription");
                    hashtable.put("shortDescription",value1);
               /* String[] crore = value1.trim().split(" ");
                if (crore[1].matches("Crore") || crore[1].matches("crore"))
                {
                    number=Float.valueOf(crore[0]);
                    number=number*10000000;
                }
                else
                {
                    number=Float.valueOf(crore[0]);
                    number=number*100000;
                }*/

                    value=rs.getString("cityName");
                    hashtable.put("cityName",value);

                    value=rs.getString("areaName");
                    hashtable.put("areaName",value);

                    value=rs.getString("price");
                    hashtable.put("price",value);

                    value=rs.getString("title");
                    hashtable.put("title",value);

                    value=rs.getString("rooms");
                    hashtable.put("rooms",value);

                    value=rs.getString("area");
                    number=Float.valueOf(value);
                    number= (float) (number/20.90);
                    number1= (int) number;
                    value= String.valueOf(number1);
                    hashtable.put("area",value);

                    //if(number<=PriceMax)
                    list1.add(hashtable);
                    number=0;

                }

                return list1;
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        System.out.println("False");
        return list1;
    }

    public ArrayList<Hashtable<String,String>> getRealestatesearch(String City,String mySearch,int PriceMin,int PriceMax,int SizeMin,int SizeMax,int Beds,int countt) throws SQLException {
        System.out.println("getting hotels");
        System.out.println(mySearch);
        float sizemin= (float) 20.90;
        sizemin=sizemin*SizeMin;
        float sizemax = (float) 20.90;
        sizemax=sizemax*SizeMax;
        sizemax=sizemax+1;
        System.out.println(PriceMin);
        System.out.println(PriceMax);
        System.out.println(City);
        System.out.println(Beds);
        // System.out.println(mySearch);
        //System.out.println(mySearch);

        System.out.println(sizemax);
        if (countt==0)
        {
            count1=10;
            count2=10;
            count3=10;
            count4=11;
        }

        System.out.println("CHECKKss");
        //System.out.println(myPrice);

        //String loc=mySearch;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart", "root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");
            if (Beds == 11) {
                sqlquery = "SELECT `homeid`,`slug`, `description`, `shortDescription`, `cityName`, `areaName`,`price`, `title`, `rooms`, `area` FROM realestatenew WHERE cityName='" +City+ "' AND areaName LIKE '%" + mySearch + "%' AND area>='" + sizemin + "' AND area<='" + sizemax + "' AND price>='" + PriceMin + "' AND price<='" + PriceMax + "' AND rooms<'" + Beds + "' ORDER BY area ASC ";
                //sqlquery = "SELECT `c1`, `c2`, `price`, `location`, `size`, `title`, `description`, `pagination`, `pagination-href` FROM realestatedata WHERE location LIKE '%" + mySearch + "%' AND price<'" + myPrice + "' AND size='" + mySize + "'";
            }
            else {
                sqlquery = "SELECT `homeid`,`slug`, `description`, `shortDescription`, `cityName`, `areaName`,`price`, `title`, `rooms`, `area` FROM realestatenew WHERE cityName='" +City+ "' AND areaName LIKE '%" + mySearch + "%' AND area>='" + sizemin + "' AND area<='" + sizemax + "' AND price>='" + PriceMin + "' AND price<='" + PriceMax + "' AND rooms='" + Beds + "' ORDER BY area ASC ";
            }
            PreparedStatement st = conn.prepareStatement(sqlquery);
            System.out.println("prepared hotel query");

            ResultSet rs = st.executeQuery();
            System.out.println("executed the query");
            String value1 = "";
            float number = 0;
            int number1 = 0;

            while (rs.next()) {
                Hashtable<String, String> hashtable = new Hashtable<String, String>();
                String value = rs.getString("slug");
                hashtable.put("slug", value);

                value=rs.getString("homeid");
                hashtable.put("homeID",value);

                value = rs.getString("description");
                hashtable.put("Description", value);

                value1 = rs.getString("shortDescription");
                hashtable.put("shortDescription", value1);
               /* String[] crore = value1.trim().split(" ");
                if (crore[1].matches("Crore") || crore[1].matches("crore"))
                {
                    number=Float.valueOf(crore[0]);
                    number=number*10000000;
                }
                else
                {
                    number=Float.valueOf(crore[0]);
                    number=number*100000;
                }*/

                value = rs.getString("cityName");
                hashtable.put("cityName", value);

                value = rs.getString("areaName");
                hashtable.put("areaName", value);

                value = rs.getString("price");
                hashtable.put("price", value);

                value = rs.getString("title");
                hashtable.put("title", value);

                value = rs.getString("rooms");
                hashtable.put("rooms", value);

                value = rs.getString("area");
                number = Float.valueOf(value);
                number = (float) (number / 20.90);
                number1 = (int) number;
                value = String.valueOf(number1);
                hashtable.put("area", value);

                //if(number<=PriceMax)
                list1.add(hashtable);
                number = 0;

            }
            System.out.println(number);

            return list1;
        }
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("False");
        return list1;
    }


    public ArrayList<Hashtable<String,String>> getRealestatesearch2(String City,String mySearch,int PriceMin,int PriceMax,int SizeMin,int SizeMax,int Beds) throws SQLException {
        System.out.println("getting hotels");
        System.out.println(mySearch);

        float sizemin= (float) 20.90;
        sizemin=sizemin*SizeMin;
        float sizemax = (float) 20.90;
        sizemax=sizemax*SizeMax;

        // System.out.println(myPrice);

        // String[] sizes1 = mySize.trim().split(" ");
        // int num =Integer.parseInt(sizes1[0]);
        int[] sizes = new int[15];
        sizes[0]=3;
        sizes[1]=5;
        sizes[2]=7;
        sizes[3]=10;
        sizes[4]=12;
        sizes[5]=15;
        sizes[6]=20;
        sizes[7]=25;
        sizes[8]=30;

        int[] prices = new int[15];
        prices[0]=8000000;
        prices[1]=14000000;
        prices[2]=18000000;
        prices[3]=28000000;
        prices[4]=32000000;
        prices[5]=40000000;
        prices[6]=50000000;
        prices[7]=70000000;
        prices[8]=90000000;



        float dist=0;
        float dist1=0;
        int count=0;

        for (int i=0;i<9;i++)
        {
            if (SizeMax==sizes[i])
            {
                PriceMax=prices[i];
            }

        }
        System.out.println(PriceMax);
        sizemax=sizemax+1;




        for (int i=0;i<8;i++)
        {
            if (i!=count1 && i!=count2) {
                if (i == 0) {
                    // dist = (float) Math.sqrt(
                    // Math.pow(sizes[i] - num, 2));
                    count = i;
                } else {
                    // dist1 = (float) Math.sqrt(
                    // Math.pow(sizes[i] - num, 2));
                    if (dist > dist1) {
                        count = i;
                        dist = dist1;
                    }
                }
            }
        }
        // sizes1[0]=Integer.toString(sizes[count]);
        //mySize =sizes1[0]+" "+sizes1[1];
        if (count1==10)
        {
            count1=count;
        }
        else if (count2==10)
        {
            count2=count;
        }
        else
        {
            count1=10;
            count2=10;
        }
        // System.out.println(mySize);
        System.out.println(count);

        System.out.println(dist);

        dist=0;
        dist1=0;
        count=0;

        for (int i=0;i<9;i++)
        {
            if (i!=count3 && i!=count4 ) {
                if (i == 0) {
                    // dist = (float) Math.sqrt(
                    //  Math.pow(prices[i] - myPrice, 2));
                    count = i;
                } else {
                    // dist1 = (float) Math.sqrt(
                    // Math.pow(prices[i] - myPrice, 2));
                    if (dist > dist1) {
                        count = i;
                        dist = dist1;
                    }
                }
            }
        }

        if (count3==10)
        {
            count3=count;
        }
        else if (count4==11)
        {
            count4=count;
        }
        else
        {
            count3=10;
            count4=11;
        }
        // myPrice=prices[count];

        //System.out.println(myPrice);
        System.out.println(count);

        System.out.println(dist);

        //String loc=mySearch;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart","root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");

            // sqlquery = "SELECT `c1`, `c2`, `price`, `location`, `size`, `title`, `description`, `pagination`, `pagination-href` FROM realestatedata WHERE location LIKE '%" + mySearch + "%' AND size='" + mySize + "'";

            sqlquery = "SELECT `homeid`,`slug`, `description`, `shortDescription`, `cityName`, `areaName`,`price`, `title`, `rooms`, `area` FROM realestatenew WHERE cityName='" +City+ "' AND areaName LIKE '%" + mySearch + "%'  AND area>='" + sizemin + "' AND area<='" + sizemax + "' AND price<='" + PriceMax + "' ORDER BY area ASC ";
            //sqlquery = "SELECT `slug`, `description`, `shortDescription`, `cityName`, `areaName`,`price`, `title`, `rooms`, `area` FROM realestatenew WHERE cityName='" +City+ "' AND areaName LIKE '%" + mySearch + "%'  AND area<'" + sizemax + "' ";
            //sqlquery = "SELECT `c1`, `c2`, `price`, `location`, `size`, `title`, `description`, `pagination`, `pagination-href` FROM realestatedata WHERE location LIKE '%" + mySearch + "%' AND price<'" + myPrice + "' AND size='" + mySize + "'";

            PreparedStatement st= conn.prepareStatement(sqlquery);
            System.out.println("prepared hotel query");
            System.out.println("knn");

            ResultSet rs=st.executeQuery();
            System.out.println("executed the query");
            String value1="";
            float number=0;
            int number1=0;

            while(rs.next())
            {
                Hashtable<String,String> hashtable=new Hashtable<String,String>();
                String value=rs.getString("slug");
                hashtable.put("slug",value);

                value=rs.getString("homeid");
                hashtable.put("homeID",value);

                value=rs.getString("description");
                hashtable.put("Description",value);

                value1=rs.getString("shortDescription");
                hashtable.put("shortDescription",value1);
               /* String[] crore = value1.trim().split(" ");
                if (crore[1].matches("Crore") || crore[1].matches("crore"))
                {
                    number=Float.valueOf(crore[0]);
                    number=number*10000000;
                }
                else
                {
                    number=Float.valueOf(crore[0]);
                    number=number*100000;
                }*/

                value=rs.getString("cityName");
                hashtable.put("cityName",value);

                value=rs.getString("areaName");
                hashtable.put("areaName",value);

                value=rs.getString("price");
                hashtable.put("price",value);

                value=rs.getString("title");
                hashtable.put("title",value);

                value=rs.getString("rooms");
                hashtable.put("rooms",value);

                value=rs.getString("area");
                number=Float.valueOf(value);
                number= (float) (number/20.90);
                number1= (int) number;
                value= String.valueOf(number1);
                hashtable.put("area",value);

                //if(number<=PriceMax)
                list1.add(hashtable);
                number=0;

            }
            System.out.println(number);

            return list1;
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("False");
        return list1;
    }

    public ArrayList<Hashtable<String,String>> getRealestatesearch3(String City,String mySearch,int PriceMin,int PriceMax,int SizeMin,int SizeMax,int Beds) throws SQLException {
        System.out.println("getting hotels");


        float sizemin= (float) 20.90;
        sizemin=sizemin*SizeMin;
        float sizemax = (float) 20.90;
        sizemax=sizemax*SizeMax;
        sizemax=sizemax+1;
        System.out.println(mySearch);

        //System.out.println(myPrice);

        //String loc=mySearch;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart","root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");

            sqlquery = "SELECT `homeid`,`slug`, `description`, `shortDescription`, `cityName`, `areaName`,`price`, `title`, `rooms`, `area` FROM realestatenew WHERE cityName='" +City+ "' AND areaName LIKE '%" + mySearch + "%' AND area>='" + sizemin + "' AND area<='" + sizemax + "' ORDER BY area ASC ";
            //sqlquery = "SELECT `c1`, `c2`, `price`, `location`, `size`, `title`, `description`, `pagination`, `pagination-href` FROM realestatedata WHERE location LIKE '%" + mySearch + "%' AND price<'" + myPrice + "' AND size='" + mySize + "'";

            PreparedStatement st= conn.prepareStatement(sqlquery);
            System.out.println("prepared hotel query");

            ResultSet rs=st.executeQuery();
            System.out.println("executed the query");
            String value1="";
            float number=0;
            int number1=0;
            while(rs.next())
            {
                Hashtable<String,String> hashtable=new Hashtable<String,String>();
                String value=rs.getString("slug");
                hashtable.put("slug",value);

                value=rs.getString("homeid");
                hashtable.put("homeID",value);

                value=rs.getString("description");
                hashtable.put("Description",value);

                value1=rs.getString("shortDescription");
                hashtable.put("shortDescription",value1);
               /* String[] crore = value1.trim().split(" ");
                if (crore[1].matches("Crore") || crore[1].matches("crore"))
                {
                    number=Float.valueOf(crore[0]);
                    number=number*10000000;
                }
                else
                {
                    number=Float.valueOf(crore[0]);
                    number=number*100000;
                }*/

                value=rs.getString("cityName");
                hashtable.put("cityName",value);

                value=rs.getString("areaName");
                hashtable.put("areaName",value);

                value=rs.getString("price");
                hashtable.put("price",value);

                value=rs.getString("title");
                hashtable.put("title",value);

                value=rs.getString("rooms");
                hashtable.put("rooms",value);

                value=rs.getString("area");
                number=Float.valueOf(value);
                number= (float) (number/20.90);
                number1= (int) number;
                value= String.valueOf(number1);
                hashtable.put("area",value);

                //if(number<=PriceMax)
                list1.add(hashtable);
                number=0;


            }
            System.out.println(number);

            return list1;
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("False");
        return list1;
    }

    public ArrayList<Hashtable<String,String>> getRealestatesearch4(String City,String mySearch,int PriceMin,int PriceMax,int SizeMin,int SizeMax,int Beds) throws SQLException {
        System.out.println("getting hotels");

        System.out.println(mySearch);

        //System.out.println(myPrice);

        //String loc=mySearch;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart","root", null);

//            int result1 = Integer.valueOf(mobile);
//            int result2 = Integer.valueOf(age);
            System.out.println("Hello1");

            sqlquery = "SELECT `homeid`,`slug`, `description`, `shortDescription`, `cityName`, `areaName`,`price`, `title`, `rooms`, `area` FROM realestatenew WHERE cityName='" +City+ "' ORDER BY area ASC ";
            //sqlquery = "SELECT `c1`, `c2`, `price`, `location`, `size`, `title`, `description`, `pagination`, `pagination-href` FROM realestatedata WHERE location LIKE '%" + mySearch + "%' AND price<'" + myPrice + "' AND size='" + mySize + "'";

            PreparedStatement st= conn.prepareStatement(sqlquery);
            System.out.println("prepared hotel query");

            ResultSet rs=st.executeQuery();
            System.out.println("executed the query");
            String value1="";
            float number=0;
            int number1=0;
            while(rs.next())
            {
                Hashtable<String,String> hashtable=new Hashtable<String,String>();
                String value=rs.getString("slug");
                hashtable.put("slug",value);

                value=rs.getString("homeid");
                hashtable.put("homeID",value);

                value=rs.getString("description");
                hashtable.put("Description",value);

                value1=rs.getString("shortDescription");
                hashtable.put("shortDescription",value1);
               /* String[] crore = value1.trim().split(" ");
                if (crore[1].matches("Crore") || crore[1].matches("crore"))
                {
                    number=Float.valueOf(crore[0]);
                    number=number*10000000;
                }
                else
                {
                    number=Float.valueOf(crore[0]);
                    number=number*100000;
                }*/

                value=rs.getString("cityName");
                hashtable.put("cityName",value);

                value=rs.getString("areaName");
                hashtable.put("areaName",value);

                value=rs.getString("price");
                hashtable.put("price",value);

                value=rs.getString("title");
                hashtable.put("title",value);

                value=rs.getString("rooms");
                hashtable.put("rooms",value);

                value=rs.getString("area");
                number=Float.valueOf(value);
                number= (float) (number/20.90);
                number1= (int) number;
                value= String.valueOf(number1);
                hashtable.put("area",value);

                //if(number<=PriceMax)
                list1.add(hashtable);
                number=0;


            }
            System.out.println(number);

            return list1;
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("False");
        return list1;
    }

}