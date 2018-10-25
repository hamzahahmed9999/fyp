package com.hussain.Controllers;

import com.hussain.Business_Layer.UserClass;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



import java.util.*;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.AuthenticationFailedException;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
//import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import static java.lang.System.out;


@WebServlet(name = "VerificationServlet",urlPatterns = {"/VerificationServlet"})
public class VerificationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        out.println("Verify test1");

        HttpSession orignial_session=request.getSession();
        HttpSession session1 = request.getSession();

        UserClass cus =(UserClass)session1.getAttribute("user_object") ;

        String from = "friendzhussain094@gmail.com";
        String to=orignial_session.getAttribute("user_email").toString();
        String subject = "SmartFly Airways| Booking Information";
        String message = "Dear Mr." +cus.get_Username() +", You flight have been booked!!. Have a safe Journey, Thank you for choosing us.";

        String login = "friendzhussain094@gmail.com";
        String password = "03201414558";
        out.println("Verify test2");

        try {
            Properties props = new Properties();
            props.setProperty("mail.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.port", "587");//587
            props.setProperty("mail.smtp.auth", "true");
            props.setProperty("mail.smtp.starttls.enable", "true");

            Authenticator auth = new SMTPAuthenticator(login, password);

            Session session = Session.getInstance(props, auth);

            MimeMessage msg = new MimeMessage(session);
            msg.setText(message);
            msg.setSubject(subject);
            msg.setFrom(new InternetAddress(from));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            Transport.send(msg);
            out.println("Verify Send");

        } catch (AuthenticationFailedException ex) {

            session1.setAttribute("ErrorMessage", "Authentication failed");
            out.println("Authentication Error!!");
            return;
            // dispatcher = request.getRequestDispatcher(err);

        } catch (AddressException ex) {
            session1.setAttribute("ErrorMessage", "Wrong email address");
            out.println("Address Error!!");
            return;
            //   dispatcher = request.getRequestDispatcher(err);

        } catch (MessagingException ex) {
            session1.setAttribute("ErrorMessage", ex.getMessage());
            out.println("Message Error!!");
            return;
            //    dispatcher = request.getRequestDispatcher(err);
        }

        //dispatcher.forward(request, response);
        //return;

        response.sendRedirect("Booking5.jsp");
        return;

    }

    private class SMTPAuthenticator extends Authenticator {

        private PasswordAuthentication authentication;

        public SMTPAuthenticator(String login, String password) {
            authentication = new PasswordAuthentication(login, password);
        }

        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return authentication;
        }
    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
