package Business_Layer;

import Data_Layer.userdata;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Hashtable;

public class User {
    int Id;
    String Name;
    String Email;
    String Contactnumber;
    String DOB;
    String Gender;
    String city;
    String Type;
    String Image;
    String Password;


    public User(String name, String email, String contactnumber, String type, String image, String password,String Gender,String city,String dob) {
        Name = name;
        Email = email;
        Contactnumber = contactnumber;
        Type = type;
        Image = image;
        Password = password;
        this.Gender=Gender;
        this.city=city;
        this.DOB=dob;

    }


    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String gender) {
        Gender = gender;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
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
            obj.signupcheck(Name,Email,Password,Contactnumber,Gender,city,DOB);
        }
        catch(SQLException e)
        {

        }
    }


    public User signin() throws SQLException {

        ArrayList<Hashtable<String, String>>temp;
        User signedinuser=new User();
        try{
            Data_Layer.userdata obj=new userdata();
            System.out.println("getting in");
            temp=obj.signincheck(this.getEmail(),this.getPassword());
            System.out.println("size of "+temp.size());
            for(int i=0;i<temp.size();i++ )
            {
                signedinuser.setId(Integer.parseInt(temp.get(i).get("ID")));;
                System.out.println("id is coming "+Integer.parseInt(temp.get(i).get("ID")));
                signedinuser.setEmail(temp.get(i).get("Email"));
                signedinuser.setPassword(temp.get(i).get("Password"));
                signedinuser.setName(temp.get(i).get("Username"));
                signedinuser.setCity(temp.get(i).get("City"));
                signedinuser.setContactnumber(temp.get(i).get("ContactNo"));
                signedinuser.setDOB(temp.get(i).get("DOB"));
                signedinuser.setGender(temp.get(i).get("Gender"));
                signedinuser.setType(temp.get(i).get("type"));
            }


        }
        catch(SQLException e)
        {

        }
        return signedinuser;
    }



}