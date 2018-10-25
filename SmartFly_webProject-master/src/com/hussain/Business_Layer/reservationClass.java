package com.hussain.Business_Layer;

public class reservationClass {
    private int RID;
    private int bookingid;
    private String Firstname;
    private String Lastname;
    private int Seatno;

    public reservationClass(int RID, int bookingid, String firstname, String lastname, int seatno) {
        this.RID = RID;
        this.bookingid = bookingid;
        Firstname = firstname;
        Lastname = lastname;
        Seatno = seatno;
    }

    public int getRID() {
        return RID;
    }

    public void setRID(int RID) {
        this.RID = RID;
    }

    public int getBookingid() {
        return bookingid;
    }

    public void setBookingid(int bookingid) {
        this.bookingid = bookingid;
    }

    public String getFirstname() {
        return Firstname;
    }

    public void setFirstname(String firstname) {
        Firstname = firstname;
    }

    public String getLastname() {
        return Lastname;
    }

    public void setLastname(String lastname) {
        Lastname = lastname;
    }

    public int getSeatno() {
        return Seatno;
    }

    public void setSeatno(int seatno) {
        Seatno = seatno;
    }
}
