package Business_Layer;

import Data_Layer.userdata;

import java.sql.SQLException;

public class User {int Id;
    String Name;
    String Email;
    String Contactnumber;
    String Type;
    String Image;
    String Password;

    public User(String name, String email, String contactnumber, String type, String image, String password) {
        Name = name;
        Email = email;
        Contactnumber = contactnumber;
        Type = type;
        Image = image;
        Password = password;
    }

    public User() {
        Name = "";
        Email = "";
        Contactnumber = "";
        Type = "";
        Image = "";
        Password = "";
    }


    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getContactnumber() {
        return Contactnumber;
    }

    public void setContactnumber(String contactnumber) {
        Contactnumber = contactnumber;
    }

    public String getType() {
        return Type;
    }

    public void setType(String type) {
        Type = type;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String image) {
        Image = image;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public void setId(int id)
    {
        Id=id;
    }

    public int getId()
    {
        return Id;
    }
    public void signup() throws SQLException {

        try{
            Data_Layer.userdata obj=new userdata();
            obj.signupcheck(Name,Email,Password,Contactnumber);
        }
        catch(SQLException e)
        {

        }
    }


    public void signin() throws SQLException {

        try{
            Data_Layer.userdata obj=new userdata();
            obj.signincheck(this.getEmail(),this.getPassword());
        }
        catch(SQLException e)
        {

        }
    }



}