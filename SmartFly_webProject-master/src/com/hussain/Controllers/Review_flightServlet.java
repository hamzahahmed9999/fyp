package com.hussain.Controllers;

import com.hussain.Business_Layer.flightClass;
import com.hussain.Business_Layer.flightDetailClass;
import com.hussain.Business_Layer.flightServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import static java.lang.System.out;

@WebServlet(name = "Review_flightServlet",urlPatterns = {"/Review_flightServlet"})
public class Review_flightServlet extends HttpServlet {
    String flightID,flightDetailID;
    flightServices serve=new flightServices();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        flightID= request.getParameter("flightId");
        flightDetailID= request.getParameter("flightId");
        out.println("flightId is:"+flightID);
        out.println("flightDetailId is:"+flightDetailID);

        flightClass flight=serve.getOneWayflight(flightID);
        flightDetailClass flightDtail=serve.getOneWayflightDetail(flightDetailID);

        request.setAttribute("flightClass", flight);
        request.setAttribute("flightDetailClass", flightDtail);


        request.getRequestDispatcher("Booking2.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
