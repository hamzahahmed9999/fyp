package Business_Layer;

import Data_Layer.bankingplandata;
import Data_Layer.userdata;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Hashtable;

public class Bankingplan {

    String Planid;
    String Bankid;
    String Description;
    String PlantermMin;
    String PlantermMax;
    String PlanRate;
    String MinimumInvestment;
    String MaximumInvestment;
    String Islamic;
    String Monthly;
    String Quaterly;
    String Halfyearly;
    String Anually;
    String Other;
    String BankName;
    String Website;

    public String getBankName() {
        return BankName;
    }

    public void setBankName(String bankName) {
        BankName = bankName;
    }

    public String getWebsite() {
        return Website;
    }

    public void setWebsite(String website) {
        Website = website;
    }

    public String getMaximumInvestment() {
        return MaximumInvestment;
    }

    public void setMaximumInvestment(String maximumInvestment) {
        MaximumInvestment = maximumInvestment;
    }

    public Bankingplan() {
    }

    public String getPlanid() {
        return Planid;
    }

    public void setPlanid(String planid) {
        Planid = planid;
    }

    public String getBankid() {
        return Bankid;
    }

    public void setBankid(String bankid) {
        Bankid = bankid;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getPlantermMin() {
        return PlantermMin;
    }

    public void setPlantermMin(String plantermMin) {
        PlantermMin = plantermMin;
    }

    public String getPlantermMax() {
        return PlantermMax;
    }

    public void setPlantermMax(String plantermMax) {
        PlantermMax = plantermMax;
    }

    public String getPlanRate() {
        return PlanRate;
    }

    public void setPlanRate(String planRate) {
        PlanRate = planRate;
    }

    public String getMinimumInvestment() {
        return MinimumInvestment;
    }

    public void setMinimumInvestment(String minimumInvestment) {
        MinimumInvestment = minimumInvestment;
    }

    public String getIslamic() {
        return Islamic;
    }

    public void setIslamic(String islamic) {
        Islamic = islamic;
    }

    public String getMonthly() {
        return Monthly;
    }

    public void setMonthly(String monthly) {
        Monthly = monthly;
    }

    public String getQuaterly() {
        return Quaterly;
    }

    public void setQuaterly(String quaterly) {
        Quaterly = quaterly;
    }

    public String getHalfyearly() {
        return Halfyearly;
    }

    public void setHalfyearly(String halfyearly) {
        Halfyearly = halfyearly;
    }

    public String getAnually() {
        return Anually;
    }

    public void setAnually(String anually) {
        Anually = anually;
    }

    public String getOther() {
        return Other;
    }

    public void setOther(String other) {
        Other = other;
    }

    public Bankingplan(String planid, String bankid, String description, String plantermMin, String plantermMax, String planRate, String minimumInvestment, String MaximumInvestment, String islamic, String monthly, String quaterly, String halfyearly, String anually, String other ,String BankName,String Website) {

        Planid = planid;
        Bankid = bankid;
        Description = description;
        PlantermMin = plantermMin;
        PlantermMax = plantermMax;
        PlanRate = planRate;
        MinimumInvestment = minimumInvestment;
        this.MaximumInvestment = MaximumInvestment;
        Islamic = islamic;
        Monthly = monthly;
        Quaterly = quaterly;
        Halfyearly = halfyearly;
        Anually = anually;
        Other = other;
        this.BankName=BankName;
        this.Website=Website;
    }


    public ArrayList<Bankingplan> getbankingplans()
    {
        ArrayList<Bankingplan> planscoming=new ArrayList<Bankingplan>();
        bankingplandata tempobj=new bankingplandata();
        try {
            ArrayList<Hashtable<String,String>> obj;
            obj=tempobj.getmybankingplans();

            for (int i=0;i<obj.size();i++)
            {
                String Planid=obj.get(i).get("PlanID");
                String Bankid=obj.get(i).get("BankID");
                String Description=obj.get(i).get("Description");
                String PlantermMin=obj.get(i).get("PlantermMin");
                String PlantermMax=obj.get(i).get("PlantermMax");
                String PlanRate=obj.get(i).get("PlanRate");
                String MinimumInvestment=obj.get(i).get("MinimumInvestment");
                String MaximumInvestment=obj.get(i).get("MaximumInvestment");
                String Islamic=obj.get(i).get("Islamic");
                String Monthly=obj.get(i).get("Monthly");
                String Quaterly=obj.get(i).get("Quaterly");
                String Halfyearly=obj.get(i).get("Halfyearly");
                String Anually=obj.get(i).get("Anually");
                String Other=obj.get(i).get("Other");
                String BankName=obj.get(i).get("BankName");
                String Website=obj.get(i).get("Website");

                Bankingplan newobj=new Bankingplan(Planid,Bankid,Description,PlantermMin,PlantermMax,PlanRate,MinimumInvestment,MaximumInvestment,Islamic,Monthly,Quaterly,Halfyearly,Anually,Other,BankName,Website);
                planscoming.add(newobj);
            }
            return planscoming;
        }
        catch (SQLException e)
        {
            return planscoming;
        }
    }


    public void addnewbankingplan()
    {
        bankingplandata tempobj=new bankingplandata();
        try {
            tempobj.bankingplandata(this.Planid,this.Bankid,this.Description,this.PlantermMin,this.PlantermMax,this.PlanRate,this.MinimumInvestment,this.MaximumInvestment,this.Islamic,this.Monthly,this.Quaterly,this.Halfyearly,this.Anually,this.Other);

        }
        catch (SQLException e)
        {

        }
}


}
