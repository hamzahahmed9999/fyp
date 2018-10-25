package Controlers;

import Business_Layer.Propertyplan;
import Business_Layer.Realestate;
import Business_Layer.User;
import Business_Layer.ratingb;

import javax.jms.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ratingservlet",urlPatterns = {"/ratingservlet"})
public class ratingservlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User currentuser=(User) req.getSession(true).getAttribute("signedinuser");

        System.out.println(currentuser.getName());
        System.out.println("in post");
        resp.setContentType("text/plain");
        String type=req.getParameter("type").toString();

        if(type.matches("review"))
        {
            String areaid=req.getParameter("areaid");
            System.out.println(" in review");
            String reviewarea=req.getParameter("reviewarea").toString();
            ratingb businesslayerpasser=new ratingb();

            businesslayerpasser.givereviewb(reviewarea,areaid,currentuser);


        }
        else if(type.matches("rating"))
        {
            String areaid=req.getParameter("areaid");
            int rating=Integer.parseInt(req.getParameter("rating").toString());
            ratingb businesslayerpasser=new ratingb();

            businesslayerpasser.giveratingb(rating,areaid,currentuser);

        }
        else if(type.matches("wish"))
        {
            String PID=req.getParameter("PID").toString();
            ratingb businesslayerpasser=new ratingb();

            businesslayerpasser.givewishb(PID,currentuser);
        }
        else if(type.matches("show"))
        {
            String id=req.getParameter("id");
            System.out.println("inshow");
            ratingb temp=new ratingb();
            Realestate obj=temp.bringpage(id);
            RequestDispatcher rd=req.getRequestDispatcher("ratingpage.jsp");
            req.setAttribute("showproperty",obj);
            System.out.println("about to send");
            rd.forward(req,resp);

        }


    }
}
