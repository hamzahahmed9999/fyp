package com.hussain.Business_Layer;

public class seatsClass {
    private int Sid;
    private int FDetailId;
    private int TotalSeats;
    private int Avaiableseats;

    public int getSid() {
        return Sid;
    }

    public void setSid(int sid) {
        Sid = sid;
    }

    public int getFDetailId() {
        return FDetailId;
    }

    public void setFDetailId(int FDetailId) {
        this.FDetailId = FDetailId;
    }

    public int getTotalSeats() {
        return TotalSeats;
    }

    public void setTotalSeats(int totalSeats) {
        TotalSeats = totalSeats;
    }

    public int getAvaiableseats() {
        return Avaiableseats;
    }

    public void setAvaiableseats(int avaiableseats) {
        Avaiableseats = avaiableseats;
    }

    public seatsClass(int ID, int fid, int Tseats, int Aseats){
        this.Sid = ID;
        this.FDetailId = fid;
        this.TotalSeats=Tseats;

        this.Avaiableseats=Aseats;
    }


}
