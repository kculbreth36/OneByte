package Servlets;


import Business.Customer;
import Business.Order;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/newOrderServlet"})
public class newOrderServlet extends HttpServlet {
    
    
/********************************************************************
 * newOrderServlet: this servlet is used to process and order and check if cart is empty.
 * if empty alert user, if ready to checkout. Send user to Payment.jsp
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
 ********************************************************************/

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        boolean active;
        HttpSession session;
        session = request.getSession(true);
        /* String amount = "19.96";
            Order o1 = new Order();
            
            o1.insertDB(0, amount, "Open", "10", "BigTuna@DunderMifflin.com", "", "11/16/2024", "High Street", "Scranton");
            RequestDispatcher rd = request.getRequestDispatcher("/Payment.jsp");
            rd.forward(request, response);  */
        
        String amount;
        try {
            Customer c2 = (Customer) session.getAttribute("c1");
            active = c2.getCust();
            c2.display();
         
            if(active == true) {
                String city = c2.getCity();
                String street = c2.getStreet();
                String status = "Open";
                String id = c2.getCustID();
                String email = c2.getEmail();
                String approver = "";
                String date = "11/16/2024";
                amount = request.getParameter("hiddenId");
                
                System.out.println("THIS IS THE AMOUNT THAT IS DUE CHECK " + amount);
                RequestDispatcher rd = request.getRequestDispatcher("/Payment.jsp");
                rd.forward(request, response); 
                Order o1 = new Order();
                o1.insertDB(0, amount, status, id, email, approver, date, street, city);
                o1.setAmount(amount);
                o1.setApproverID(approver);
                o1.setCity(city);
                o1.setCustID(id);
                o1.setCustEmail(email);
                o1.setStreet(street);
                o1.setDateOfApproval(date);
                session.setAttribute("o1", o1);
               
               
            } 
        } catch(NullPointerException e) {
            System.out.println(e);
        } 
        
             /*  amount = request.getParameter("hiddenId");
                System.out.println("THIS IS THE AMOUNT THAT IS DUE CHECK " + amount);
                Order o2 = new Order();
                o2.setAmount(amount);
                session.setAttribute("o2", o2);
                RequestDispatcher rd = request.getRequestDispatcher("/Payment.jsp");
                rd.forward(request, response); 
 */
             request.setAttribute("errorMessage", "Cart is empty. ");
             request.getRequestDispatcher("HomePage.jsp").forward(request, response);
      
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
