package com.hussain.Controllers;

import com.hussain.Business_Layer.addflightService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static java.lang.System.out;

@WebServlet(name = "approveflightServlet",urlPatterns = {"/approveflightServlet"})
public class approveflightServlet extends HttpServlet {
    addflightService serve=new addflightService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String flightid=request.getParameter("flightid");

        if(serve.approveFlight(flightid))
        {
            out.println("Flight_approved");
        }

        RequestDispatcher rt=request.getRequestDispatcher("ShowflighttoManagerServlet");
        rt.forward(request,response);


    }
}
