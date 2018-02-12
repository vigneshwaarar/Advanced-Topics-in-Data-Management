/*login.java is the file where the google user credentials is validated
 * GOOGLE api implementation for google login
 */

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;


import java.sql.*;

/**
 * Servlet implementation class login
 */
@WebServlet(urlPatterns = {"/login"})
public class login extends HttpServlet {
    @Override
    protected void doPost (HttpServletRequest req,
                        HttpServletResponse resp)
                        throws ServletException, IOException {

        resp.setContentType("text/html");
        Connection conn = null;

        try {
            String idToken = req.getParameter("id_token");
            GoogleIdToken.Payload payLoad = IdTokenVerifierAndParser.getPayload(idToken);
            String name = (String) payLoad.get("name");
            String email = payLoad.getEmail();
            System.out.println("User name: " + name);
            System.out.println("User email: " + email);
            

            HttpSession session = req.getSession(true);
            session.setAttribute("userName", name);
            req.getServletContext()
               .getRequestDispatcher("/proj_input.jsp").forward(req, resp);
                  

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}