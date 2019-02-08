package Controlers;

import Business_Layer.Message;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "messagesservlet",urlPatterns = {"/messagesservlet"})
public class messagesservlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Message temp=new Message();
        ArrayList<Message> messageslist=null;
        messageslist=temp.getmessage();
        req.getSession().setAttribute("messagelist", messageslist);
        req.getRequestDispatcher("messages.jsp").forward(req, resp);
    }
}
