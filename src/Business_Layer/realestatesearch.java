package Business_Layer;

import Data_Layer.realestatedata;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Hashtable;

public class realestatesearch {
    String City;
    String mySearch;
    int PriceMin;
    int PriceMax;
    int SizeMin;
    int SizeMax;
    int Beds;
    int countt;
    int id;
    public realestatesearch(String City,String mySearch,int PriceMin,int PriceMax,int SizeMin,int SizeMax,int Beds,int id)
    {
        this.City = City;
        this.mySearch = mySearch;
        PriceMin = PriceMin;
        PriceMax = PriceMax;
        SizeMin = SizeMin;
        SizeMax = SizeMax;
        Beds = Beds;
        this.id=id;
    }
    public ArrayList<Realestate> getRealestatesearch(String City,String mySearch,int PriceMin,int PriceMax,int SizeMin,int SizeMax,int Beds,int id)
    {

        int check=0;
        System.out.println("passed in business realestate data");
        ArrayList<Hashtable<String,String>> hashtableArrayList=new ArrayList<Hashtable<String,String>>();
        ArrayList<Realestate> realestatelist= new ArrayList<Realestate>();
        try {
            realestatedata obj10=new realestatedata();
            realestatedata obj=new realestatedata();
            obj10.saveRealestate(City,mySearch,PriceMin,PriceMax,SizeMin,SizeMax,Beds,id);
            hashtableArrayList=obj.getRealestatesearch(City,mySearch,PriceMin,PriceMax,SizeMin,SizeMax,Beds,countt);
            if(hashtableArrayList.isEmpty()){
                System.out.println("got nothing");
                check=1;
                realestatedata obj1=new realestatedata();
                hashtableArrayList=obj1.getRealestatesearch2(City,mySearch,PriceMin,PriceMax,SizeMin,SizeMax,Beds);
            }

            if(hashtableArrayList.isEmpty()){
                System.out.println("got nothing");
                realestatedata obj1=new realestatedata();
                hashtableArrayList=obj1.getRealestatesearch3(City,mySearch,PriceMin,PriceMax,SizeMin,SizeMax,Beds);
                if (check!=1){
                    check=2;
                }

            }

            if(hashtableArrayList.isEmpty()){
                System.out.println("got nothing");
                realestatedata obj1=new realestatedata();
                hashtableArrayList=obj1.getRealestatesearch4(City,mySearch,PriceMin,PriceMax,SizeMin,SizeMax,Beds);
                check=3;
            }

            if(hashtableArrayList.isEmpty()){
                System.out.println("got nothing2");
            }
            else
            {
                int num=20;
                int count=hashtableArrayList.size();

                System.out.println("got everything");
                for(int i=0;i<hashtableArrayList.size();i++)
                {
                    String homeid;
                    String slug;
                    String desciption;
                    String shortDescription;
                    String cityName;
                    String areaName;
                    String price;
                    String title;
                    String rooms;
                    String area;

                    if (check!=1 && check!=3) {
                        num = hashtableArrayList.size();
                    }
                    //String msg="The filters you applied has no results";

                    homeid=hashtableArrayList.get(i).get("homeID");
                    slug=hashtableArrayList.get(i).get("slug");
                    desciption=hashtableArrayList.get(i).get("description");
                    shortDescription=hashtableArrayList.get(i).get("shortDescription");
                    cityName=hashtableArrayList.get(i).get("cityName");
                    areaName=hashtableArrayList.get(i).get("areaName");
                    price=hashtableArrayList.get(i).get("price");
                    title=hashtableArrayList.get(i).get("title");
                    rooms=hashtableArrayList.get(i).get("rooms");
                    area=hashtableArrayList.get(i).get("area");

                    Realestate newobj=new Realestate(slug,desciption,shortDescription,cityName,areaName,price,title,rooms,area,check,num);
                    newobj.setHomeID(homeid);
                    realestatelist.add(newobj);
                    //check=realestatelist.size();


                }
                if (hashtableArrayList.size()<15)
                {
                    if (check!=1){
                        check=2;
                    }
                    realestatedata obj2=new realestatedata();
                    hashtableArrayList=obj2.getRealestatesearch2(City,mySearch,PriceMin,PriceMax,SizeMin,SizeMax,Beds);
                    for(int i=0;i<hashtableArrayList.size();i++)
                    {
                        String homeid;
                        String slug;
                        String desciption;
                        String shortDescription;
                        String cityName;
                        String areaName;
                        String price;
                        String title;
                        String rooms;
                        String area;
                        // int num;
                        if (check!=1 && check!=3) {
                            num = hashtableArrayList.size();
                        }

                        homeid=hashtableArrayList.get(i).get("homeID");
                        slug=hashtableArrayList.get(i).get("slug");
                        desciption=hashtableArrayList.get(i).get("description");
                        shortDescription=hashtableArrayList.get(i).get("shortDescription");
                        cityName=hashtableArrayList.get(i).get("cityName");
                        areaName=hashtableArrayList.get(i).get("areaName");
                        price=hashtableArrayList.get(i).get("price");
                        title=hashtableArrayList.get(i).get("title");
                        rooms=hashtableArrayList.get(i).get("rooms");
                        area=hashtableArrayList.get(i).get("area");

                        Realestate newobj=new Realestate(slug,desciption,shortDescription,cityName,areaName,price,title,rooms,area,check,num);
                        newobj.setHomeID(homeid);
                        float p=Float.valueOf(price);

                        if (p<PriceMin || p>PriceMax)
                        realestatelist.add(newobj);
                    }
                }
                if (hashtableArrayList.size()<15)
                {
                    if (check!=1){
                        check=2;
                    }
                    realestatedata obj3=new realestatedata();
                    hashtableArrayList=obj3.getRealestatesearch3(City,mySearch,PriceMin,PriceMax,SizeMin,SizeMax,Beds);
                    for(int i=0;i<hashtableArrayList.size();i++)
                    {
                        String homeid;
                        String slug;
                        String desciption;
                        String shortDescription;
                        String cityName;
                        String areaName;
                        String price;
                        String title;
                        String rooms;
                        String area;
                        // int num;
                        if (check!=1 && check!=3) {
                            num = hashtableArrayList.size();
                        }
                        homeid=hashtableArrayList.get(i).get("homeID");
                        slug=hashtableArrayList.get(i).get("slug");
                        desciption=hashtableArrayList.get(i).get("description");
                        shortDescription=hashtableArrayList.get(i).get("shortDescription");
                        cityName=hashtableArrayList.get(i).get("cityName");
                        areaName=hashtableArrayList.get(i).get("areaName");
                        price=hashtableArrayList.get(i).get("price");
                        title=hashtableArrayList.get(i).get("title");
                        rooms=hashtableArrayList.get(i).get("rooms");
                        area=hashtableArrayList.get(i).get("area");

                        Realestate newobj=new Realestate(slug,desciption,shortDescription,cityName,areaName,price,title,rooms,area,check,num);
                        newobj.setHomeID(homeid);
                        realestatelist.add(newobj);

                    }
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
