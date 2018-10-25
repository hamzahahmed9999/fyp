package Controlers;

import Business_Layer.Bankingplan;
import Business_Layer.sendpreferences;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "addpreferencesservlet",urlPatterns = {"/addpreferencesservlet"})
public class addpreferencesservlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int IR=Integer.parseInt(req.getParameter("IR"));
        String city=req.getParameter("city");
        String Area=req.getParameter("Area");
        String Size=req.getParameter("Size");
        int stories=Integer.parseInt(req.getParameter("stories"));
        int bedrooms=Integer.parseInt(req.getParameter("bedrooms"));




        String response="";


        System.out.println("done");
        response="Plan successfull";
        try{


            sendpreferences tempobj=new sendpreferences();
            tempobj.passpreferences(IR,city,Area,Size,stories,bedrooms);
            RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
            req.setAttribute("message",response);
            rd.forward(req,resp);

        }
        catch(Exception e)
        {
            System.out.println("done");
            response="Signup failed";
            RequestDispatcher rd=req.getRequestDispatcher("preferences.jsp");
            req.setAttribute("message",response);
            rd.forward(req,resp);
        }


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }



}
