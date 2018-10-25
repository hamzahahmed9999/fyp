package com.hussain.Controllers;

import com.hussain.Business_Layer.UserValidateServices;
import com.hussain.Business_Layer.UserClass;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static java.lang.System.out;

@WebServlet(name = "SignupServlet",urlPatterns = {"/SignupServlet"})
public class SignupServlet extends HttpServlet {
    UserValidateServices serve=new UserValidateServices();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name=request.getParameter("uname");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String mobile=request.getParameter("mobile");
        String address=request.getParameter("address");
        String state=request.getParameter("state");
        String city=request.getParameter("city");
        String country=request.getParameter("country");
        String gender=request.getParameter("gender");
        String age=request.getParameter("age");

        UserClass u=serve.Signup(name,email,password,mobile,address,state,city,country,gender,age);

        if(u!=null)
        {
            out.println("Check5");
            HttpSession session=request.getSession();
            session.setAttribute("user_email",email);

            response.sendRedirect("Booking4.jsp");
        }
        else {
            response.sendRedirect("main.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
