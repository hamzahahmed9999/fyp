package Business_Layer;

import Data_Layer.userdata;

import java.sql.SQLException;

public class sendpreferences {

    public void passpreferences(int IR,String city,String area,String size,int stories,int bedrooms)
    {
        try{
            userdata obj=new userdata();
            obj.addpreferences(IR,city,area,size,stories,bedrooms);
        }
        catch(SQLException e)
        {

        }

    }
}
