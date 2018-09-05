package Controlers;

import Business_Layer.Bankingplan;
import Business_Layer.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "addplanservlet",urlPatterns = {"/addplanservlet"})
public class addplanservlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("name");
        String InvestmentFund=req.getParameter("InvestmentFund");
        int maxagematurity=Integer.parseInt(req.getParameter("maxagematurity"));
        int ATpaymentrange=Integer.parseInt(req.getParameter("ATpaymentrange"));
        int SumAssured=Integer.parseInt(req.getParameter("SumAssured"));
        int maxannualpremium=Integer.parseInt(req.getParameter("maxannualpremium"));
        int contact=0;
        String CM=req.getParameter("CoverMultiple");
        String UnitAllocation=req.getParameter("unitallocation");
        String Email=req.getParameter("email");
        String ppmode=req.getParameter("ppmode");
        String psf=req.getParameter("psf");




        String response="";


            System.out.println("done");
            response="Plan successfull";
            try{


                Bankingplan newbankingplan=new Bankingplan(name,InvestmentFund,maxagematurity,contact,ATpaymentrange,SumAssured,maxannualpremium,CM,UnitAllocation,Email,ppmode,psf);
                newbankingplan.addnewbankingplan();
                RequestDispatcher rd=req.getRequestDispatcher("addbankingplan.jsp");
                req.setAttribute("message",response);
                rd.forward(req,resp);

            }
            catch(Exception e)
            {
                System.out.println("done");
                response="Signup failed";
                RequestDispatcher rd=req.getRequestDispatcher("addbankingplan.jsp");
                req.setAttribute("message",response);
                rd.forward(req,resp);
            }


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }


}
