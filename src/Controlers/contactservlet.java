package Controlers;

import Business_Layer.Message;
import Business_Layer.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "contactservlet",urlPatterns = {"/contactservlet"})
public class contactservlet extends HttpServlet {


    public contactservlet() {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ArrayList<Message> mymessages=null;
        Message tempobj=new Message();
        mymessages=tempobj.getmessage();
        HttpSession usersession = req.getSession();
        usersession.setAttribute("messagesforadmin", mymessages);
        req.setAttribute("messagesforadmin", mymessages);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fname=req.getParameter("fname");
        String lname=req.getParameter("lname");
        String cntnumber=req.getParameter("cntnumber");
        String subject=req.getParameter("subject");
        String email=req.getParameter("email");

        Message sub=new Message(fname,lname,cntnumber,email,subject);
        sub.sendmessage();

        RequestDispatcher rd = req.getRequestDispatcher("/contactus.jsp");
        rd.forward(req, resp);

    }
}
