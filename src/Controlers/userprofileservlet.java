package Controlers;


import Business_Layer.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "userprofileservlet",urlPatterns = {"/userprofileservlet"})
public class userprofileservlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User usersigned=(User)req.getSession().getAttribute("signedinuser");


        RequestDispatcher rd = req.getRequestDispatcher("Userprofile.jsp");
        req.setAttribute("user",usersigned);
        rd.forward(req, resp);

    }
}
