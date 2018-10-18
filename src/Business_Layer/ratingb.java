package Business_Layer;

import Data_Layer.ratingdata;

public class ratingb {
    public void givereviewb(String reviewarea,User currentuser){
        ratingdata datalayerpasser=new ratingdata();
        datalayerpasser.givereviewd(reviewarea,currentuser);


    }

    public void giveratingb(int rating,User currentuser){
        ratingdata datalayerpasser=new ratingdata();
        datalayerpasser.giveratingd(rating,currentuser);

    }

    public void givewishb(String PID,User currentuser){
        ratingdata datalayerpasser=new ratingdata();
        datalayerpasser.givewishd(PID,currentuser);

    }

}
