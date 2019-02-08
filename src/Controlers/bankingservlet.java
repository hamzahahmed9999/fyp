package Controlers;

import Business_Layer.Bankingplan;
import Business_Layer.Realestate;
import Business_Layer.realestateb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "bankingservlet",urlPatterns = {"/bankingservlet"})
public class bankingservlet extends HttpServlet {
    public bankingservlet() {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String message="";
        Bankingplan obj=new Bankingplan();
        System.out.println("banking controler");
        ArrayList<Bankingplan> datacoming=obj.getbankingplans();
        if(datacoming.isEmpty())
        {
            message="There are no such bankingplans";

        }
        else
        {
            req.getSession().setAttribute("comingplans", datacoming);
            req.setAttribute("comingplans",datacoming);
            req.setAttribute("message",message);
            System.out.println("gothere1");
            req.getRequestDispatcher("Banking.jsp").forward(req, resp);
        }

//        req.getSession().setAttribute("comingplans", datacoming);
//        req.setAttribute("comingplans",datacoming);
//        req.setAttribute("message",message);
//        System.out.println("sending plans to jsp");
//        req.getRequestDispatcher("Banking.jsp").forward(req, resp);

    }
}
