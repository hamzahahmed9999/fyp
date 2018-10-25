package com.hussain.Business_Layer;

import com.hussain.Data_Layer.AddFlightDao;

import java.util.ArrayList;
import java.util.Hashtable;

public class addflightService {

    AddFlightDao addflight=new AddFlightDao();
    public boolean addFlight(String origin, String destination, String flight_name, String date, String Depttime, String flighttime)
    {
        String approve="0";
        return addflight.flightAddition(origin,destination,flight_name,date,Depttime,flighttime,approve);

    }



    public ArrayList<flightClass> ShowFlight(String check)
    {
        ArrayList<Hashtable<String,String >> hashTable = addflight.ShowAdditionflight(check);
        ArrayList<flightClass> list=new ArrayList<>();

        if(hashTable != null)
        {
            for (int i=0;i<hashTable.size();i++)
            {
                String id= hashTable.get(i).get("id");
                String sources=hashTable.get(i).get("source");
                String destination= hashTable.get(i).get("destination");
                String Fname= hashTable.get(i).get("Fname");
                String Date= hashTable.get(i).get("Date");
                String DeptTime= hashTable.get(i).get("DeptTime");
                String FlightTime =hashTable.get(i).get("FlightTime");
                String approve =hashTable.get(i).get("approve");

                list.add(new flightClass(Integer.valueOf(id),sources,destination,Fname,Date,DeptTime,FlightTime,Integer.valueOf(approve)));
            }
        }
        return list;
    }
    public  boolean addflightinfo(String flight_id,String flight_category,String price,String features,String seats)
    {
        if(flight_category.equals("first"))
        {
            flight_category="2";
        }
        else if (flight_category.equals("Buniess"))
        {
            flight_category="3";
        }
        else if (flight_category.equals("Economy"))
        {
            flight_category="1";
        }
        return addflight.addflightinfo(flight_id,flight_category,price,features,seats);
    }
    public  boolean updateflightinfo(String detail_id,String price,String features,String seats,int check)
    {
        return  addflight.Updateflightinfo(detail_id,price,features,seats,check);
    }



    public ArrayList<flightDetailClass> ShowFlightinfo()
    {
        ArrayList<Hashtable<String,String >> hashTable = addflight.ShowAdditionflightinfo();
        ArrayList<flightDetailClass> list=new ArrayList<>();

        if(hashTable != null)
        {
            for (int i=0;i<hashTable.size();i++)
            {
                String id= hashTable.get(i).get("id");
                String category=hashTable.get(i).get("category");
                String flightID= hashTable.get(i).get("flightID");
                String Price= hashTable.get(i).get("Price");
                String feature= hashTable.get(i).get("feature");


                list.add(new flightDetailClass(Integer.valueOf(id),Integer.valueOf(category),Integer.valueOf(flightID),Integer.valueOf(Price),feature));
            }
        }
        return list;
    }
    public ArrayList<seatsClass> ShowFlightseats()
    {
        ArrayList<Hashtable<String,String >> hashTable = addflight.ShowAdditionflightseats();
        ArrayList<seatsClass> list=new ArrayList<>();

        if(hashTable != null)
        {
            for (int i=0;i<hashTable.size();i++)
            {
                String id= hashTable.get(i).get("id");
                String FDetailID=hashTable.get(i).get("FDetailID");
                String TotalSeats= hashTable.get(i).get("TotalSeats");

                list.add(new seatsClass(Integer.valueOf(id),Integer.valueOf(FDetailID),Integer.valueOf(TotalSeats),Integer.valueOf(TotalSeats)));
            }
        }
        return list;
    }
    public boolean approveFlight(String flightID)
    {
        return addflight.approveFlight(flightID);

    }
}
