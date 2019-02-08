package Business_Layer;

import Data_Layer.ratingdata;

import java.util.ArrayList;

public class ratingb {
    public void givereviewb(String reviewarea,String areaid,User currentuser){
        ratingdata datalayerpasser=new ratingdata();
        datalayerpasser.givereviewd(reviewarea,areaid,currentuser);


    }

    public void givereviewofplanb(String reviewarea,String planid,User currentuser){
        ratingdata datalayerpasser=new ratingdata();
        //datalayerpasser.givereviewofpland(reviewarea,planid,currentuser);


    }

    public void giveratingb(int rating,String areaid,User currentuser){
        ratingdata datalayerpasser=new ratingdata();
        datalayerpasser.giveratingd(rating,areaid,currentuser);

    }


    public void giveratingofplanb(int rating,String planid,User currentuser){
        ratingdata datalayerpasser=new ratingdata();
        datalayerpasser.giveratingofpland(rating,planid,currentuser);

    }

    public void givewishb(String PID,User currentuser){
        ratingdata datalayerpasser=new ratingdata();
        datalayerpasser.givewishd(PID,currentuser);

    }


    public ArrayList<ratingnreview> bringratings(String id)
    {
        ratingdata temp=new ratingdata();
        //ratingnreview obj=temp.giveprop1(id);
        //hashtableArrayList=temp.giveprop1st<Hashtable<String,String>>();
        ArrayList<ratingnreview> objlist=null;
        objlist=temp.giveratingsnreviews(id);

        return  objlist;

    }
    public Realestate bringpage(String id)
    {
        ratingdata temp=new ratingdata();
        Realestate obj=temp.giveprop(id);

        return  obj;

    }
    public Bankingplan bringplan(String id)
    {
        ratingdata temp=new ratingdata();
        Bankingplan obj=temp.giveplan(id);

        return  obj;

    }

}
