package com.hussain.Business_Layer;

public class flightDetailClass {
    private int DetailID;
    private int flightCategoryID;
    private int flightID;
    private int Price;
    private String feature;

    public flightDetailClass(int detailID, int flightCategoryID, int flightID, int price, String feature) {
        DetailID = detailID;
        this.flightCategoryID = flightCategoryID;
        this.flightID = flightID;
        Price = price;
        this.feature = feature;
    }

    public int getDetailID() {
        return DetailID;
    }

    public void setDetailID(int detailID) {
        DetailID = detailID;
    }

    public int getFlightCategoryID() {
        return flightCategoryID;
    }

    public void setFlightCategoryID(int flightCategoryID) {
        this.flightCategoryID = flightCategoryID;
    }

    public int getFlightID() {
        return flightID;
    }

    public void setFlightID(int flightID) {
        this.flightID = flightID;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int price) {
        Price = price;
    }

    public String getFeature() {
        return feature;
    }

    public void setFeature(String feature) {
        this.feature = feature;
    }
}
