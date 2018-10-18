package Business_Layer;

import Data_Layer.userdata;

import java.sql.SQLException;

public class Message {
    String fname;
    String lname;
    String cntnumber;
    String country;
    String subject;

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getCntnumber() {
        return cntnumber;
    }

    public void setCntnumber(String cntnumber) {
        this.cntnumber = cntnumber;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }


    public Boolean sendmessage()
    {
        userdata temp=new userdata();
        String temp1="hello me rukhsana";

            temp.sendmessagetoadmin(this,temp1);
            return true;
    }



}
