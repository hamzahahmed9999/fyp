package com.hussain.Controllers;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static java.lang.System.out;

@WebServlet(name = "MainServlet",urlPatterns = {"/MainServlet"})
public class MainServlet extends HttpServlet {
    String tmp;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        tmp= request.getParameter("value");
        out.println("value is:"+tmp);
        if(tmp.equals("Up"))
        {
            RequestDispatcher rt=request.getRequestDispatcher("SignupServlet");
            rt.forward(request,response);
        }
        if(tmp.equals("In"))
        {
            RequestDispatcher rt=request.getRequestDispatcher("LoginServlet");
            rt.forward(request,response);
        }
        if(tmp.equals("Search"))
        {
            RequestDispatcher rt=request.getRequestDispatcher("Search_flightServlet");
            rt.forward(request,response);
        }
        if(tmp.equals("Review"))
        {
            RequestDispatcher rt=request.getRequestDispatcher("Review_flightServlet");
            rt.forward(request,response);
        }
        if(tmp.equals("Add"))
        {
            RequestDispatcher rt=request.getRequestDispatcher("addflightServlet");
            rt.forward(request,response);
        }
        if(tmp.equals("class"))
        {
            RequestDispatcher rt=request.getRequestDispatcher("addflightinfoServlet");
            rt.forward(request,response);
        }
        if(tmp.equals("Verify"))
        {
            out.println("Verify_mainServlet");
            RequestDispatcher rt=request.getRequestDispatcher("VerificationServlet");
            rt.forward(request,response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
