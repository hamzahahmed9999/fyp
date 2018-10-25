package Business_Layer;

import Data_Layer.userdata;

import java.sql.SQLException;

public class Propertyplan {

    String Name;
    String Description;
    String Location;
    int Price;
    String Link;


    public Propertyplan() {
    }


    public Propertyplan(String name, String description, String location, int price, String link) {
        this.Name = name;
        this.Description = description;
        this.Location = location;
        this.Price = price;
        this.Link = link;

    }


    public String getName() {
        return Name;
    }

    public void setName(String name) {
        this.Name = name;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int price) {
        this.Price = price;
    }

    public String getLocation() {
        return Location;
    }

    public void setLocation(String location) {
        this.Location = location;
    }

    public String getLink() {
        return Link;
    }

    public void setLink(String link) {
        this.Location = Location;
    }

    public void addnewPropertyplan()
    {
        userdata tempobj=new userdata();
        try {
            tempobj.Propertyplandata(Name,Description,Location,Price,Link);

        }
        catch (SQLException e)
        {

        }
    }


}
