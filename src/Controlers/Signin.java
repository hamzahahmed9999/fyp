package Controlers;

import Business_Layer.User;
import Business_Layer.admin;
import Business_Layer.preference;

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
import java.util.ArrayList;
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
        User signedinuser = null;

        signinginuser.setEmail(email);
        signinginuser.setPassword(password);


        if (validateEmail(email) && password.length() >= 5) {

            if (email.endsWith("@investsmart.com")) {
                System.out.println("in admin part");

                ArrayList<admin> temolist;
                admin obj = new admin();
                temolist = obj.adminsignin();

                for (int i = 0; i < temolist.size(); i++) {
                    if (temolist.get(i).getEmail().matches(email) && temolist.get(i).getPassword().matches(password)) {
                        RequestDispatcher rd = req.getRequestDispatcher("admin.jsp");
                        req.setAttribute("message", response);
                        rd.forward(req, resp);
                    }
                }


            } else {
                System.out.println("done");
                response = "Signin successfull";
                try {
                    signedinuser = signinginuser.signin();
                    if (signedinuser.getId() != 0) {
                        int userid = signinginuser.getId();
                        String emailid = signinginuser.getEmail();
                        String pswrd = signinginuser.getPassword();
                        preference tempobj=new preference();


                        System.out.println("got signed");
                        System.out.println(signedinuser.getId());
                        System.out.println(signedinuser.getGender());

                        HttpSession usersession = req.getSession();
                        usersession.setAttribute("preferences", tempobj);
                        req.setAttribute("preferences",tempobj);
                        usersession.setAttribute("signedinuser", signedinuser);
                        req.getSession().setAttribute("message","");
                        req.setAttribute("signedinuser", signedinuser);

                        System.out.println("id is " + usersession.getId());


                        //RequestDispatcher rd = req.getRequestDispatcher("Userprofile.jsp");
                        //rd.forward(req, resp);
                        //realestateservlet obj=new realestateservlet();
                        //obj.doPost(req,resp);
                        preferenceservlet obj=new preferenceservlet();
                        obj.doPost(req,resp);

                        //resp.sendRedirect("Userprofile.jsp");
                    } else {
                        System.out.println("coming in else");
                        response = "Signin failed";
                        RequestDispatcher rd = req.getRequestDispatcher("/SignupSignin.jsp");
                        req.setAttribute("message", response);
                        rd.forward(req, resp);
                    }
                } catch (SQLException e) {

                }
            }
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





