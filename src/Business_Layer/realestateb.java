package Business_Layer;

import Data_Layer.realestatedata;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Hashtable;

public class realestateb {
    public ArrayList<Realestate> getRealestatebusiness(int id)
    {
        System.out.println("passed in business realestate data");
        String message="0";
        ArrayList<Hashtable<String,String>> hashtableArrayList=new ArrayList<Hashtable<String,String>>();
        ArrayList<Realestate> realestatelist= new ArrayList<Realestate>();
        try {
            realestatedata obj=new realestatedata();
            hashtableArrayList=obj.getRealestate(id);
            if(hashtableArrayList.isEmpty()){
                System.out.println("got nothing");
            }
            else
            {


                System.out.println("got everything");
                for(int i=0;i<hashtableArrayList.size();i++)
                {
                    String slug;
                    String homeID;
                    String desciption;
                    String shortDescription;
                    String cityName;
                    String areaName;
                    String price;
                    String title;
                    String rooms;
                    String area;
                    int check=0;
                    int num=20;

                    slug=hashtableArrayList.get(i).get("slug");
                    homeID=hashtableArrayList.get(i).get("homeID");
                    desciption=hashtableArrayList.get(i).get("description");
                    shortDescription=hashtableArrayList.get(i).get("shortDescription");
                    cityName=hashtableArrayList.get(i).get("cityName");
                    areaName=hashtableArrayList.get(i).get("areaName");
                    price=hashtableArrayList.get(i).get("price");
                    title=hashtableArrayList.get(i).get("title");
                    rooms=hashtableArrayList.get(i).get("rooms");
                    area=hashtableArrayList.get(i).get("area");

                    Realestate newobj=new Realestate(slug,desciption,shortDescription,cityName,areaName,price,title,rooms,area,check,num);
                    newobj.setHomeID(homeID);
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
