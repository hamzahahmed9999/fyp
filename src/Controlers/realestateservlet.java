package Controlers;

import Business_Layer.Realestate;
import Business_Layer.realestateb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "realestateservlet",urlPatterns = {"/realestateservlet"})
public class realestateservlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String message="";
        realestateb obj=new realestateb();
        System.out.println("realestate controler");
        ArrayList<Realestate> datacoming=obj.getRealestatebusiness();
        if(datacoming.isEmpty())
        {
             message="There are no such Realestate";

        }

        System.out.println("gothere");

        req.getSession().setAttribute("comingrealestate", datacoming);
        req.setAttribute("myrealestate",datacoming);
        req.setAttribute("message",message);
        System.out.println("gothere1");
        req.getRequestDispatcher("RealEstate.jsp").forward(req, resp);

    }
}
