package com.hussain.Business_Layer;

public class BookingClass {
    private int BookingID;
    private int UID;
    private int FID;

    public BookingClass(int bookingID, int UID, int FID) {
        BookingID = bookingID;
        this.UID = UID;
        this.FID = FID;
    }

    public int getBookingID() {
        return BookingID;
    }

    public void setBookingID(int bookingID) {
        BookingID = bookingID;
    }

    public int getUID() {
        return UID;
    }

    public void setUID(int UID) {
        this.UID = UID;
    }

    public int getFID() {
        return FID;
    }

    public void setFID(int FID) {
        this.FID = FID;
    }
}
