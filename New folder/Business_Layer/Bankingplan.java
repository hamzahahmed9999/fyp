package Business_Layer;

import Data_Layer.userdata;

import java.sql.SQLException;

public class Bankingplan {

    String name;
    String InvestmentFund;
    int maxagematurity;
    int contact;
    int ATpaymentrange;
    int SumAssured;
    int maxannualpremium;
    String CM;
    String unitallocation;
    String Email;
    String ppmode;
    String psf;


    public Bankingplan() {
    }


    public Bankingplan(String name, String investmentFund, int maxagematurity, int contact, int ATpaymentrange, int sumAssured, int maxannualpremium, String CM, String unitallocation, String email, String ppmode, String psf) {
        this.name = name;
        InvestmentFund = investmentFund;
        this.maxagematurity = maxagematurity;
        this.contact = contact;
        this.ATpaymentrange = ATpaymentrange;
        SumAssured = sumAssured;
        this.maxannualpremium = maxannualpremium;
        this.CM = CM;
        this.unitallocation = unitallocation;
        Email = email;
        this.ppmode = ppmode;
        this.psf = psf;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInvestmentFund() {
        return InvestmentFund;
    }

    public void setInvestmentFund(String investmentFund) {
        InvestmentFund = investmentFund;
    }

    public int getMaxagematurity() {
        return maxagematurity;
    }

    public void setMaxagematurity(int maxagematurity) {
        this.maxagematurity = maxagematurity;
    }

    public int getContact() {
        return contact;
    }

    public void setContact(int contact) {
        this.contact = contact;
    }

    public int getATpaymentrange() {
        return ATpaymentrange;
    }

    public void setATpaymentrange(int ATpaymentrange) {
        this.ATpaymentrange = ATpaymentrange;
    }

    public int getSumAssured() {
        return SumAssured;
    }

    public void setSumAssured(int sumAssured) {
        SumAssured = sumAssured;
    }

    public int getMaxannualpremium() {
        return maxannualpremium;
    }

    public void setMaxannualpremium(int maxannualpremium) {
        this.maxannualpremium = maxannualpremium;
    }

    public String getCM() {
        return CM;
    }

    public void setCM(String CM) {
        this.CM = CM;
    }

    public String getUnitallocation() {
        return unitallocation;
    }

    public void setUnitallocation(String unitallocation) {
        this.unitallocation = unitallocation;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getPpmode() {
        return ppmode;
    }

    public void setPpmode(String ppmode) {
        this.ppmode = ppmode;
    }

    public String getPsf() {
        return psf;
    }

    public void setPsf(String psf) {
        this.psf = psf;
    }

    public void addnewbankingplan()
    {
        userdata tempobj=new userdata();
        try {
            tempobj.bankingplandata(name,InvestmentFund,maxagematurity,contact,ATpaymentrange,SumAssured,maxannualpremium,CM,unitallocation,Email,ppmode,psf);

        }
        catch (SQLException e)
        {

        }
}


}
