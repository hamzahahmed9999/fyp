package Business_Layer;

import Data_Layer.userdata;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Hashtable;

public class admin {
    Integer id;
    String name;
    String email;
    String password;

    public admin(Integer id, String name, String email, String password) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
    }

    public admin(String name, String email, String password) {
        this.name = name;
        this.email = email;
        this.password = password;
    }

    public Integer getId() {

        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public admin() {
    }

    public ArrayList<admin> adminsignin(){
        ArrayList<Hashtable<String, String>> temp;
        ArrayList<admin> adminlist=new ArrayList<admin>();
        try{
            userdata obj=new userdata();
            System.out.println("getting in");
            temp=obj.adminsignin();
            System.out.println("size of "+temp.size());
            for(int i=0;i<temp.size();i++ )
            {
                admin signedinadmin=new admin();
                signedinadmin.setId(Integer.parseInt(temp.get(i).get("id")));
                signedinadmin.setEmail(temp.get(i).get("Name"));
                signedinadmin.setEmail(temp.get(i).get("Email"));
                signedinadmin.setPassword(temp.get(i).get("Password"));
                adminlist.add(signedinadmin);
            }


        }
        catch(SQLException e)
        {

        }
        return adminlist;

    }







}
