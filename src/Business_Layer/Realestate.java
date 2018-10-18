package Business_Layer;

public class Realestate {
    String c1;
    String c2;
    String price;
    String location;
    String size;
    String title;
    String paginationhref;

    public Realestate() {
    }

    public Realestate(String c1, String c2, String price, String location, String size, String title, String paginationhref) {
        this.c1 = c1;
        this.c2 = c2;
        this.price = price;
        this.location = location;
        this.size = size;
        this.title = title;
        this.paginationhref = paginationhref;
    }

    public String getC1() {
        return c1;
    }

    public void setC1(String c1) {
        this.c1 = c1;
    }

    public String getC2() {
        return c2;
    }

    public void setC2(String c2) {
        this.c2 = c2;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPaginationhref() {
        return paginationhref;
    }

    public void setPaginationhref(String paginationhref) {
        this.paginationhref = paginationhref;
    }
}
