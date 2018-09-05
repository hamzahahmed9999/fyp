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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "Signin",urlPatterns = {"/Signin"})
public class Signin extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("uemailsi");
        String password = req.getParameter("upassi");
        String response = "";

        System.out.println("Got in post");

        User signinginuser = new User();

        signinginuser.setEmail(email);
        signinginuser.setPassword(password);

        if (validateEmail(email) && password.length() >= 5) {
            System.out.println("done");
            response = "Signin successfull";
            try {
                signinginuser.signin();
            }
            catch(SQLException e)
            {

            }
            if (signinginuser != null) {
                int userid = signinginuser.getId();
                String emailid = signinginuser.getEmail();
                String pswrd = signinginuser.getPassword();
                System.out.println("got signed");
                HttpSession usersession = req.getSession();
                usersession.setAttribute("signedinuser", signinginuser);
                resp.sendRedirect("Banking.jsp");
            } else {
                response = "Signin failed";
                RequestDispatcher rd = req.getRequestDispatcher("loginform.jsp");
                req.setAttribute("message", response);
                rd.forward(req, resp);
            }

        } else {
            response = "Email or Password is of the wrong format";
            RequestDispatcher rd = req.getRequestDispatcher("loginform.jsp");
            req.setAttribute("message", response);
            rd.forward(req, resp);
        }
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





