package com.hussain.Controllers;

import com.hussain.Data_Layer.DataDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import com.google.gson.Gson;

import static java.lang.System.out;

@WebServlet(name = "SearchController",urlPatterns = {"/SearchController"})
public class SearchController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        out.println("In SearchController");


        response.setContentType("application/json");
        try {
            String term = request.getParameter("term");
            out.println("Data from ajax call " + term);

            DataDao dataDao = new DataDao();
            ArrayList<String> list = dataDao.getFrameWork(term);

            String searchList = new Gson().toJson(list);
            response.getWriter().write(searchList);
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }
}
