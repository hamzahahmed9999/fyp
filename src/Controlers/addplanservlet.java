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

        String Planid=req.getParameter("Planid");
        String Bankid=req.getParameter("Bankid");
        String Description=req.getParameter("Description");
        String PlantermMin=req.getParameter("PlantermMin");
        String PlantermMax=req.getParameter("PlantermMax");
        String PlanRate=req.getParameter("PlanRate");
        String MinimumInvestment=req.getParameter("MinimumInvestment");
        String MaximumInvestment=req.getParameter("MaximumInvestment");
        String Islamic=req.getParameter("Islamic");
        String Monthly=req.getParameter("Monthly");
        String Quaterly=req.getParameter("Quaterly");
        String Halfyearly=req.getParameter("Halfyearly");
        String Anually=req.getParameter("Anually");
        String Other=req.getParameter("Other");

        String response="";


            System.out.println("done");
            response="Plan successfull";
            try{


                Bankingplan newbankingplan=new Bankingplan(Planid,Bankid,Description,PlantermMin,PlantermMax,PlanRate,MinimumInvestment,MaximumInvestment,Islamic,Monthly,Quaterly,Halfyearly,Anually,Other,"","");
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
