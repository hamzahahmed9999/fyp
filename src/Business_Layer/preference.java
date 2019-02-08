package Business_Layer;

import Data_Layer.addpreferencedata;

public class preference {
    String investmentrange;
    String size;
    String area;
    String stories;
    String bedrooms;
    String city;

    public preference(String investmentrange, String size, String area, String stories, String bedrooms, String city) {
        this.investmentrange = investmentrange;
        this.size = size;
        this.area = area;
        this.stories = stories;
        this.bedrooms = bedrooms;
        this.city = city;
    }

    public preference() {
        this.investmentrange = "";
        this.size = "";
        this.area = "";
        this.stories = "";
        this.bedrooms = "";
        this.city = "";
    }

    public String getInvestmentrange() {
        return investmentrange;
    }

    public void setInvestmentrange(String investmentrange) {
        this.investmentrange = investmentrange;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getStories() {
        return stories;
    }

    public void setStories(String stories) {
        this.stories = stories;
    }

    public String getBedrooms() {
        return bedrooms;
    }

    public void setBedrooms(String bedrooms) {
        this.bedrooms = bedrooms;
    }

    public String getCity() {
        return city;
    }



    public void setCity(String city) {

        this.city = city;
    }

    public preference passpreference(int id)
    {
        addpreferencedata temp=new addpreferencedata();
        preference temp1=temp.givepreference(id);

        this.area=temp1.area;
        this.bedrooms=temp1.bedrooms;
        this.city=temp1.city;
        this.investmentrange=temp1.investmentrange;
        this.size=temp1.size;
        this.stories=temp1.stories;
        return temp1;
    }

}
