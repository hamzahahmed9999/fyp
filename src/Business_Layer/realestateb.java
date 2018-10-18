package Business_Layer;

import Data_Layer.realestatedata;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Hashtable;

public class realestateb {
    public ArrayList<Realestate> getRealestatebusiness()
    {
        System.out.println("passed in business realestate data");
        String message="0";
        ArrayList<Hashtable<String,String>> hashtableArrayList=new ArrayList<Hashtable<String,String>>();
        ArrayList<Realestate> realestatelist= new ArrayList<Realestate>();
        try {
            realestatedata obj=new realestatedata();
            hashtableArrayList=obj.getRealestate();
            if(hashtableArrayList.isEmpty()){
                System.out.println(message);
            }
            else
            {

                for(int i=0;i<hashtableArrayList.size();i++)
                {
                    String c1;
                    String c2;
                    String price;
                    String location;
                    String size;
                    String title;
                    String paginationhref;

                    c1=hashtableArrayList.get(i).get("c1");
                    c2=hashtableArrayList.get(i).get("c2");
                    price=hashtableArrayList.get(i).get("price");
                    location=hashtableArrayList.get(i).get("location");
                    size=hashtableArrayList.get(i).get("size");
                    title=hashtableArrayList.get(i).get("title");
                    paginationhref=hashtableArrayList.get(i).get("paginationhref");

                    Realestate newobj=new Realestate();
                    realestatelist.add(newobj);

                }

            }

        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }


        return realestatelist;
    }




}
