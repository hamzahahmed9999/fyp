package Controlers;

import Business_Layer.User;
import Business_Layer.ratingb;

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
        User currentuser=new User();
        System.out.println("in post");
        resp.setContentType("text/plain");
        String type=req.getParameter("type").toString();
        if(type=="review")
        {
            String reviewarea=req.getParameter("reviewarea").toString();
            ratingb businesslayerpasser=new ratingb();

            businesslayerpasser.givereviewb(reviewarea,currentuser);


        }
        else if(type=="rating")
        {
            int rating=Integer.parseInt(req.getParameter("rating").toString());
            ratingb businesslayerpasser=new ratingb();

            businesslayerpasser.giveratingb(rating,currentuser);

        }
        else if(type=="wish")
        {
            String PID=req.getParameter("PID").toString();
            ratingb businesslayerpasser=new ratingb();

            businesslayerpasser.givewishb(PID,currentuser);
        }



        RequestDispatcher rd=req.getRequestDispatcher("ratingpage.jsp");
        req.setAttribute("name","");
        rd.forward(req,resp);


    }
}
