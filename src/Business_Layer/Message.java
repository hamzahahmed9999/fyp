package Business_Layer;

import Data_Layer.userdata;

import java.sql.SQLException;
import java.util.ArrayList;

public class Message {
    String fname;
    String lname;

    public Message(String fname, String lname, String cntnumber,String email, String subject) {
        this.fname = fname;
        this.lname = lname;
        this.cntnumber = cntnumber;
        this.subject = subject;
        this.email=email;

    }

    String cntnumber;
    String email;
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


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }


    public Message() {
    }

    public Boolean sendmessage()
    {
        userdata temp=new userdata();


            temp.sendmessagetoadmin(this);

            return true;
    }


    public  ArrayList<Message> getmessage()
    {
        userdata temp=new userdata();

        ArrayList<Message> mymessages=null;

        mymessages=temp.getmessagetoadmin();

        return mymessages;
    }

}
