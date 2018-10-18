package Controlers;

import Business_Layer.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "Signup",urlPatterns = {"/Signup"})
public class Signup extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("uname");
        String email=req.getParameter("uemail");
        String password=req.getParameter("upassword");
        String contact=req.getParameter("ucontactnumber");
        String response="";

        System.out.println(name);

        System.out.println(email);

        System.out.println(password);
        if(validateEmail(email) && password.length()>8)
        {
            System.out.println("done");
            response="Signup successfull";
            try{
                User newuser=new User(name,email,contact,"","",password);
                newuser.signup();
                RequestDispatcher rd=req.getRequestDispatcher("Banking.jsp");
                req.setAttribute("message",response);
                rd.forward(req,resp);

            }
            catch(SQLException e)
            {

            }
        }
        else
        {
            System.out.println("done");
            response="Signup failed";
            RequestDispatcher rd=req.getRequestDispatcher("SignupSignin.jsp");
            req.setAttribute("message",response);
            rd.forward(req,resp);
        }




    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    public boolean validateEmail(String email) {
        // static Pattern object, since pattern is fixed
        String EMAIL_REGEX = "^[\\w-\\+]+(\\.[\\w]+)*@[\\w-]+(\\.[\\w]+)*(\\.[a-z]{2,})$";
        Pattern pattern;
        Matcher matcher;
        pattern = Pattern.compile(EMAIL_REGEX, Pattern.CASE_INSENSITIVE);
        matcher = pattern.matcher(email);
        return matcher.matches();
    }




}
