package com.hussain.Business_Layer;

public class flightClass {
    private int FID;
    private String Source;
    private String Destination;
    private String Fname;
    private String Date;
    private String DeptTime;
    private String flightTime;
    private int approve;

    public int getApprove() {
        return approve;
    }

    public void setApprove(int approve) {
        this.approve = approve;
    }

    public int getFID() {
        return FID;
    }

    public void setFID(int FID) {
        this.FID = FID;
    }

    public String getSource() {
        return Source;
    }

    public void setSource(String source) {
        Source = source;
    }

    public String getDestination() {
        return Destination;
    }

    public void setDestination(String destination) {
        Destination = destination;
    }

    public String getFname() {
        return Fname;
    }

    public void setFname(String fname) {
        Fname = fname;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String date) {
        Date = date;
    }

    public String getDeptTime() {
        return DeptTime;
    }

    public void setDeptTime(String deptTime) {
        DeptTime = deptTime;
    }

    public String getFlightTime() {
        return flightTime;
    }

    public void setFlightTime(String flightTime) {
        this.flightTime = flightTime;
    }


    public flightClass(int id, String S, String D, String fname, String date, String Dtime, String Ftime,int approve){
        this.FID = id;
        this.Source=S;
        this.Destination=D;
        this.Fname=fname;

        this.Date=date;
        this.DeptTime=Dtime;
        this.flightTime=Ftime;
        this.approve=approve;
    }
}
