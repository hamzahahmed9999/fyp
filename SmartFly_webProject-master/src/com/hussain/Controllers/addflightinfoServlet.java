package com.hussain.Controllers;

import com.hussain.Business_Layer.addflightService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

import static java.lang.System.out;

@WebServlet(name = "addflightinfoServlet",urlPatterns = {"/addflightinfoServlet"})
public class addflightinfoServlet extends HttpServlet {
    addflightService serve=new addflightService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Class=request.getParameter("class");
        String flight_id=request.getParameter("flightid");
        String detail_id=request.getParameter("detailID");
        String seats_Check=request.getParameter("seats_check");


        String price=request.getParameter("price");
        String features=request.getParameter("field_name[]");
        String seats=null;
        seats=request.getParameter("seats");
        out.println("Seats_check are:"+seats_Check);
        out.println("Seats are:"+seats);

        out.println("FLight_InFO_1:"+Class);
        out.println("FLight_InFO_2:"+flight_id);

        if(Integer.valueOf(detail_id)==0) {
            if (serve.addflightinfo(flight_id, Class, price, features, seats)) {
                out.println("FLight_InFO_Added");
            }
        }
        else
        {
            if(Integer.valueOf(seats_Check)==0)
            {
                out.println("Seats NULL");
                if (serve.updateflightinfo(detail_id, price, features, seats,0)) {
                    out.println("FLight_InFO_Updated");
                }
            }
            else
            {
                out.println("Seats not NULL");
                if (serve.updateflightinfo(detail_id, price, features, seats,1)) {
                    out.println("FLight_InFO_Updated");
                }
            }
        }
        RequestDispatcher rt=request.getRequestDispatcher("ShowflighttoAdminServlet");
        rt.forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
