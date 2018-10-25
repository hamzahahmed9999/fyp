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

@WebServlet(name = "addflightServlet",urlPatterns = {"/addflightServlet"})
public class addflightServlet extends HttpServlet {
    addflightService serve=new addflightService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String origin=request.getParameter("origin");
        String destination=request.getParameter("destination");
        String flight_name=request.getParameter("flight_name");
        String date=request.getParameter("date");
        String Depttime=request.getParameter("Depttime");
        String flighttime=request.getParameter("flighttime");

        if(serve.addFlight(origin,destination,flight_name,date,Depttime,flighttime)==true)
        {
            out.println("FLight_Added");
        }
        RequestDispatcher rt=request.getRequestDispatcher("ShowflighttoAdminServlet");
        rt.forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
