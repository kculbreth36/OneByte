package Servlets;

import Business.Customer;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/custLoginServlet"})
public class custLoginServlet extends HttpServlet {

/********************************************************************
 * CustLoginServlet: this servlet is used for Customer login credentials confirmation
 * then forward successful login to the Home Page jsp
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
 ********************************************************************/
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String custId;
        String custPw; 
        boolean active = true;
        int count = 0;
        
        HttpSession session;
        session = request.getSession(true);
        try {
            custId = request.getParameter("username");
            custPw = request.getParameter("custPw");
            
            Customer c1 = new Customer();
            c1.selectDB(custId);
            
            if (custPw.equals(c1.getPassword())) {
                c1.setCust(active);
                session.setAttribute("c1", c1);
                RequestDispatcher rd = request.getRequestDispatcher("/SuccessLogin.jsp");
                rd.forward(request, response);
                
            } else {
                   count ++;
                   RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
                   request.setAttribute("errorMessage", "Email or password entered is wrong. ");
                   request.getRequestDispatcher("Login.jsp").forward(request, response);
                }
        } catch (NullPointerException e) {
            System.out.println(e);
            }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
