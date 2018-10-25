package com.hussain.Business_Layer;

import com.hussain.Data_Layer.FlightSearchDao;

import java.util.ArrayList;
import java.util.Hashtable;

import static java.lang.System.out;

public class flightServices {

    FlightSearchDao flightsearch=new FlightSearchDao();

    public ArrayList<flightClass> searchOneWayflight(String source, String destionation, String date)
    {
        ArrayList<Hashtable<String,String >> hashTable = flightsearch.Searchflight(source,destionation,date);
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
                String approve= hashTable.get(i).get("approve");

                list.add(new flightClass(Integer.valueOf(id),sources,destination,Fname,Date,DeptTime,FlightTime,Integer.valueOf(approve)));
            }
            out.println("Search Function1........");
        }
        return list;
    }

    public ArrayList<flightClass> getRightFlghts(ArrayList<flightClass> F1,ArrayList<flightDetailClass> F2)
    {
        ArrayList<flightClass> list=new ArrayList<>();


        for(int i=0;i<F1.size();i++)
        {
            for(int j=0;j<F2.size();j++)
            {
                if(F1.get(i).getFID()==F2.get(j).getFlightID())
                {
                    list.add(F1.get(i));
                }
            }
        }
        out.println("Search Function3........");
        return list;

    }


    public ArrayList<flightDetailClass> searchflightDetail(String CategoryID)
    {
        out.println(CategoryID);

        if(CategoryID.contains("Economy"))
        {
            CategoryID="1";
        }
        else if(CategoryID.contains("Buniess"))
        {
            CategoryID="3";
        }
        else if(CategoryID.contains("First"))
        {
            CategoryID="2";
        }


        ArrayList<Hashtable<String,String >> hashTable = flightsearch.SearchflightDetail(CategoryID);
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
            out.println("Search Function2........");
        }
        return list;
    }


    public flightClass getOneWayflight(String FID)
    {
        flightClass F=null;
        Hashtable<String,String > hashTable = flightsearch.SearchflightbyID(FID);

        if(hashTable != null)
        {
            String id= hashTable.get("id");
            String sources=hashTable.get("source");
            String destination= hashTable.get("destination");
            String Fname= hashTable.get("Fname");
            String Date= hashTable.get("Date");
            String DeptTime= hashTable.get("DeptTime");
            String FlightTime =hashTable.get("FlightTime");
            String flightapprove= hashTable.get("approve");

            F=new flightClass(Integer.valueOf(id),sources,destination,Fname,Date,DeptTime,FlightTime,Integer.valueOf(flightapprove));
        }
        return F;
    }


    public flightDetailClass getOneWayflightDetail(String FID)
    {
        flightDetailClass F=null;
        Hashtable<String,String > hashTable = flightsearch.SearchflightDetailbyID(FID);

        if(hashTable != null)
        {
            String id= hashTable.get("id");
            String category=hashTable.get("category");
            String flightID= hashTable.get("flightID");
            String Price= hashTable.get("Price");
            String feature= hashTable.get("feature");

            F=new flightDetailClass(Integer.valueOf(id),Integer.valueOf(category),Integer.valueOf(flightID),Integer.valueOf(Price),feature);
        }
        return F;
    }
}
