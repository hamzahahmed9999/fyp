package Business_Layer;

import Data_Layer.ratingdata;
import javafx.beans.property.Property;

public class ratingb {
    public void givereviewb(String reviewarea,String areaid,User currentuser){
        ratingdata datalayerpasser=new ratingdata();
        datalayerpasser.givereviewd(reviewarea,areaid,currentuser);


    }

    public void giveratingb(int rating,String areaid,User currentuser){
        ratingdata datalayerpasser=new ratingdata();
        datalayerpasser.giveratingd(rating,areaid,currentuser);

    }

    public void givewishb(String PID,User currentuser){
        ratingdata datalayerpasser=new ratingdata();
        datalayerpasser.givewishd(PID,currentuser);

    }


    public Realestate bringpage(String id)
    {
        ratingdata temp=new ratingdata();
        Realestate obj=temp.giveprop(id);

        return  obj;

    }

}
