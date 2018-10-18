package Controlers;

import Business_Layer.Message;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "contactservlet",urlPatterns = {"/contactservlet"})
public class contactservlet extends HttpServlet {


    public contactservlet() {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fname=req.getParameter("fname");
        String lname=req.getParameter("lname");
        String country=req.getParameter("country");
        String cntnumber=req.getParameter("cntnumber");
        String subject=req.getParameter("subject");

        Message sub=new Message();
        sub.sendmessage();

    }
}
