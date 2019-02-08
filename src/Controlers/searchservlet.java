package Controlers;

import Business_Layer.Realestate;
import Business_Layer.User;
import Business_Layer.realestateb;
import Business_Layer.realestatesearch;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "searchservlet",urlPatterns = {"/searchservlet"})
public class searchservlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User obj1=(User) req.getSession().getAttribute("signedinuser");
        int id=0;
        if (obj1 != null)
        {
            id=obj1.getId();
        }
        String City=req.getParameter("City");
        String mySearch=req.getParameter("mySearch");
        int PriceMin=Integer.parseInt(req.getParameter("PriceMin"));
        int PriceMax=Integer.parseInt(req.getParameter("PriceMax"));
        int SizeMin=Integer.parseInt(req.getParameter("SizeMin"));
        int SizeMax=Integer.parseInt(req.getParameter("SizeMax"));
        int Beds=Integer.parseInt(req.getParameter("Beds"));
        System.out.println("realestate controler1");
        realestatesearch obj=new realestatesearch(City,mySearch,PriceMin,PriceMax,SizeMin,SizeMax,Beds,id);
        System.out.println("realestate controler2");
        ArrayList<Realestate> datacoming=obj.getRealestatesearch(City,mySearch,PriceMin,PriceMax,SizeMin,SizeMax,Beds,id);
        if(datacoming.isEmpty())
        {
            mySearch="There are no such Realestate";

        }

        System.out.println("gothere");

        req.getSession().setAttribute("comingrealestate", datacoming);
        req.setAttribute("myrealestate",datacoming);
        req.setAttribute("City",City);
        req.setAttribute("mySearch",mySearch);
        req.setAttribute("myPrice",PriceMin);
        req.setAttribute("mySize",SizeMin);
        System.out.println("gothere1");

        req.getRequestDispatcher("RealEstate.jsp").forward(req, resp);
    }
}
