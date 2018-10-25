package com.hussain.Controllers;

import com.hussain.Business_Layer.UserValidateServices;
import com.hussain.Business_Layer.UserClass;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static java.lang.System.out;

@WebServlet(name = "LoginServlet",urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
    UserValidateServices serve=new UserValidateServices();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email=request.getParameter("useremail");
        String password=request.getParameter("userpassword");


        UserClass u=serve.login(email,password);

        if(u!=null)
        {
            out.println("Check5");
            HttpSession session=request.getSession();
            session.setAttribute("user_email",email);
            session.setAttribute("user_object",u);

            if(email.equals("admin@gmail.com"))
            {

                RequestDispatcher rt=request.getRequestDispatcher("ShowflighttoAdminServlet");
                rt.forward(request,response);
                return;
            }
            else if(email.equals("manager@gmail.com"))
            {
                RequestDispatcher rt=request.getRequestDispatcher("ShowflighttoManagerServlet");
                rt.forward(request,response);
                return;
            }

            response.sendRedirect("Book.jsp");
        }
        else {
            response.sendRedirect("main.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
