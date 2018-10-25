package com.hussain.Controllers;

import com.hussain.Business_Layer.addflightService;
import com.hussain.Business_Layer.flightClass;
import com.hussain.Business_Layer.flightDetailClass;
import com.hussain.Business_Layer.flightServices;
import com.hussain.Data_Layer.AddFlightDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import static java.lang.System.out;

@WebServlet(name = "Search_flightServlet",urlPatterns = {"/Search_flightServlet"})
public class Search_flightServlet extends HttpServlet {
    flightServices serve=new flightServices();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String deptAirport=request.getParameter("deptAirport");
        String deptAirportDate=request.getParameter("deptAirportDate");
        String deptSelectCategory=request.getParameter("deptSelectCategory");
        String arrAirport=request.getParameter("arrAirport");
        String arrAirportDate=request.getParameter("arrAirportDate");
        String arrSelectCategory=request.getParameter("arrSelectCategory");
        String adultSelectPassengersCount=request.getParameter("adultSelectPassengersCount");
        String childSelectPassengersCount=request.getParameter("childSelectPassengersCount");
        String underageSelectPassengersCount=request.getParameter("underageSelectPassengersCount");

//        out.println("Check1"+deptAirport);
//        out.println("Check2"+deptAirportDate);
//        out.println("Check3"+deptSelectCategory);
//        out.println("Check4"+arrAirport);
//        out.println("Check5"+arrAirportDate);
//        out.println("Check6"+arrSelectCategory);
//        out.println("Check7"+adultSelectPassengersCount);
//        out.println("Check8"+childSelectPassengersCount);
//        out.println("Check9"+underageSelectPassengersCount);

        String totalPassangers=adultSelectPassengersCount+" Adult "+childSelectPassengersCount+" Child ";
        deptAirport=deptAirport.substring(0, 1).toUpperCase() + deptAirport.substring(1).toLowerCase();
        arrAirport=arrAirport.substring(0, 1).toUpperCase() + arrAirport.substring(1).toLowerCase();

        ArrayList<flightClass> flight=serve.searchOneWayflight(deptAirport,arrAirport,deptAirportDate);
        ArrayList<flightDetailClass> flightDetail=serve.searchflightDetail(deptSelectCategory);

        flight=serve.getRightFlghts(flight,flightDetail);

        out.println("Search Servlet1........");

        request.setAttribute("deptAirport", deptAirport);
        request.setAttribute("arrAirport", arrAirport);
        request.setAttribute("deptSelectCategory", deptSelectCategory);
        request.setAttribute("deptAirportDate", deptAirportDate);
        request.setAttribute("Passangers", totalPassangers);
        request.setAttribute("flightClass", flight);
        request.setAttribute("flightDetailClass", flightDetail);
        request.setAttribute("flightSize", flight.size());

        out.println("Search Servlet2........");

        out.println("flight size is:"+flight.size());
        out.println("flightDetail size is:"+flightDetail.size());

        request.getRequestDispatcher("Booking1.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
