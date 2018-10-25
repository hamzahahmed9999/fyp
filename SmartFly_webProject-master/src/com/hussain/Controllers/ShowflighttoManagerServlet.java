package com.hussain.Controllers;

import com.hussain.Business_Layer.addflightService;
import com.hussain.Business_Layer.flightClass;
import com.hussain.Business_Layer.flightDetailClass;
import com.hussain.Business_Layer.seatsClass;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ShowflighttoManagerServlet",urlPatterns = {"/ShowflighttoManagerServlet"})
public class ShowflighttoManagerServlet extends HttpServlet {
    addflightService serve=new addflightService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<flightClass> flight=serve.ShowFlight("manager");
        ArrayList<flightDetailClass> flightDetail=serve.ShowFlightinfo();
        ArrayList<seatsClass> flightSeats=serve.ShowFlightseats();
        request.setAttribute("flightClass", flight);
        request.setAttribute("flightDetailClass", flightDetail);
        request.setAttribute("flightSeats", flightSeats);
        request.getRequestDispatcher("manager.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
