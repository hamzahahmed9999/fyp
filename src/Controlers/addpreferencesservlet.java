package Controlers;

import Business_Layer.Bankingplan;
import Business_Layer.User;
import Business_Layer.sendpreferences;

import javax.jms.Session;
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
        String Investmentrange=req.getParameter("IR");
        String city=req.getParameter("city");
        String Area=req.getParameter("Area");
        String Size=req.getParameter("Size");
        String s=req.getParameter("stories");
        String b=req.getParameter("bedrooms");


        int IR=Integer.parseInt(Investmentrange);
        int stories=0;
        int bedrooms=Integer.parseInt(b);
        String response="";


        System.out.println("done");
        response="Plan successfull";
        try{

            User obj=(User) req.getSession().getAttribute("signedinuser");
            int id=obj.getId();
            sendpreferences tempobj=new sendpreferences();
            tempobj.passpreferences(id,IR,city,Size,Area,stories,bedrooms);
            RequestDispatcher rd=req.getRequestDispatcher("preferences.jsp");

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
