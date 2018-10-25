package Controlers;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import Business_Layer.Bankingplan;
import Business_Layer.Propertyplan;
import Business_Layer.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "addpropertyservlet",urlPatterns = {"/addpropertyservlet"})
public class addpropertyservlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String Name=req.getParameter("Name");
        String Des=req.getParameter("Des");
        String Loc=req.getParameter("Loc");
        int Price=Integer.parseInt(req.getParameter("Price"));
        String Link=req.getParameter("Link");


        String response="";


        System.out.println("done");
        response="Plan successfull";
        try{


            Propertyplan newpropertyplan=new Propertyplan(Name,Des,Loc,Price,Link);
            newpropertyplan.addnewPropertyplan();
            RequestDispatcher rd=req.getRequestDispatcher("addproperty.jsp");
            req.setAttribute("message",response);
            rd.forward(req,resp);

        }
        catch(Exception e)
        {
            System.out.println("done");
            response="Signup failed";
            RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
            req.setAttribute("message",response);
            rd.forward(req,resp);
        }


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }


}
