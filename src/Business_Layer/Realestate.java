package Business_Layer;

public class Realestate {
    String homeID;
    String slug;
    String desciption;
    String shortDescription;
    String cityName;
    String areaName;
    String price;
    String title;
    String rooms;
    String area;
    int check;
    int num;

    public Realestate() {
    }

    public Realestate(String slug, String desciption, String shortDescription, String cityName, String areaName, String price, String title, String rooms, String area,int check,int num) {
        this.slug = slug;
        this.desciption = desciption;
        this.shortDescription=shortDescription;
        this.cityName = cityName;
        this.areaName = areaName;
        this.price = price;
        this.title = title;
        this.rooms = rooms;
        this.area = area;
        this.check=check;
        this.num=num;
    }


    public String getHomeID() {
        return homeID;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public void setHomeID(String homeID) {
        this.homeID = homeID;
    }

    public String getSlug() {
        return slug;
    }

    public void setSlug(String slug) {
        this.slug = slug;
    }

    public String getDesciption() {
        return desciption;
    }

    public void setDesciption(String desciption) {
        this.desciption = desciption;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getRooms() {
        return rooms;
    }

    public void setRooms(String rooms) {
        this.rooms = rooms;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public int getCheck(){return check;}

    public void setCheck(int check){this.check=check;}
}

