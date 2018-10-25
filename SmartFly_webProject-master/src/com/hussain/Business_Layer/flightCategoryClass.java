package com.hussain.Business_Layer;

public class flightCategoryClass {
    private int ID;
    private String categoryName;

    public flightCategoryClass(int id, String name){
        this.ID = id;
        this.categoryName = name;
    }
    public int get_ID() {
        return ID;
    }

    public String get_categoryName() {
        return categoryName;
    }
    public void set_categoryName(String name) {
        this.categoryName = name;
    }

}
