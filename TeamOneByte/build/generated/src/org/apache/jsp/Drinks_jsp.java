package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Drinks_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"ShoppingCart.js\" async></script>\n");
      out.write("        <title>Drinks Page</title>\n");
      out.write("        <style>\n");
      out.write("            .navbar {\n");
      out.write("                display: flex;\n");
      out.write("                justify-content: space-between;\n");
      out.write("                align-items: center;\n");
      out.write("                height: 60px;\n");
      out.write("                border: 1px solid black;\n");
      out.write("                margin: 0;\n");
      out.write("                background-color: #F5BD6C;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("               .navbar-left, .navbar-right {\n");
      out.write("                display: flex;\n");
      out.write("                align-items: center;\n");
      out.write("                height: 100%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .navbar a {\n");
      out.write("                text-decoration: none;\n");
      out.write("                color: #333;\n");
      out.write("                font-weight: bold;\n");
      out.write("                padding: 10px 20px;\n");
      out.write("                background-color: #F2D2A7;\n");
      out.write("                flex: 1;\n");
      out.write("                display: flex;\n");
      out.write("                align-items: center;\n");
      out.write("                justify-content: center;\n");
      out.write("                height: 100%;\n");
      out.write("                border-left: 1px solid black;\n");
      out.write("                border-right: 1px solid black;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"home\">\n");
      out.write("            <h5 id=\"homeMainText\"><img id=\"toplogo\" src='../TeamOneByte/images/logo.png'> Mom's and Pop's Pizzeria</h5>\n");
      out.write("        </div>\n");
      out.write("        ");
      out.write("\n");
      out.write("        <nav class=\"navbar\">\n");
      out.write("            <div class=\"navbar-left\">\n");
      out.write("                <a href=\"HomePage.jsp\">Home</a>\n");
      out.write("                <div class=\"dropdown\">\n");
      out.write("                    <a href=\"#\">Menu</a>\n");
      out.write("                    <div class=\"dropdown-content\">\n");
      out.write("                        <a href=\"PizzaBuild.jsp\">Build Pizza</a>\n");
      out.write("                        <a href=\"Sides.jsp\">Sides</a>\n");
      out.write("                        <a href=\"Drinks.jsp\">Drinks</a>\n");
      out.write("                        <a href=\"Desserts.jsp\">Desserts</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <a href=\"#\">Profile</a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"navbar-right\">\n");
      out.write("                ");
      out.write("\n");
      out.write("                <div class=\"cart-dropdown\">\n");
      out.write("                    <a href=\"#\">Cart</a>\n");
      out.write("                     <form action=\"Drinks.jsp\" class=\"cart-dropdown-content\">\n");
      out.write("                        <section class=\"container content-section\">\n");
      out.write("                            <h2 class=\"section-header\">Checkout Cart</h2>\n");
      out.write("                            <div class=\"cart-row\">\n");
      out.write("                                <span class=\"cart-item cart-header cart-column\">Item</span>\n");
      out.write("                                <span class=\"cart-price cart-header cart-column\">Price</span>\n");
      out.write("                                <span class=\"cart-quantity cart-header cart-column\">Quantity</span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"cart-items\">\n");
      out.write("        \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"cart-total\">\n");
      out.write("                                <strong class=\"cart-total-title\">Amount Due</strong>\n");
      out.write("                                <span class=\"cart-total-price\">$0</span>\n");
      out.write("                                <input type=\"hidden\" id=\"hiddenId\" name=\"hiddenId\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <button class=\"btn btn-primary btn-purchase\" type=\"submit\" onclick=\"form.action ='newOrderServlet';\">Order</button>\n");
      out.write("                        </section>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("                <a href=\"#\">Contact</a>\n");
      out.write("                <a id=\"logout\" onclick=\"Logout()\" href = \"logoutServlet\">Logout</a>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        ");
      out.write("\n");
      out.write("        <section class=\"container content-section\">\n");
      out.write("            <h2 class=\"section-header\">Drinks</h2>\n");
      out.write("            <div class=\"shop-items\">\n");
      out.write("                <div class=\"shop-item\">\n");
      out.write("                    <span class=\"shop-item-title\">Apple Juice</span>\n");
      out.write("                    <img class=\"shop-item-image\" src=\"images/applejuice.png\">\n");
      out.write("                    <div class=\"shop-item-details\">\n");
      out.write("                        <span class=\"shop-item-price\">$2.99</span>\n");
      out.write("                        <button class=\"btn btn-primary shop-item-button\" type=\"button\">ADD TO CART</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"shop-item\">\n");
      out.write("                    <span class=\"shop-item-title\">Smoothie</span>\n");
      out.write("                    <img class=\"shop-item-image\" src=\"images/smoothie.png\">\n");
      out.write("                    <div class=\"shop-item-details\">\n");
      out.write("                        <span class=\"shop-item-price\">$5.99</span>\n");
      out.write("                        <button class=\"btn btn-primary shop-item-button\"type=\"button\">ADD TO CART</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"shop-item\">\n");
      out.write("                    <span class=\"shop-item-title\">Water</span>\n");
      out.write("                    <img class=\"shop-item-image\" src=\"images/water.png\">\n");
      out.write("                    <div class=\"shop-item-details\">\n");
      out.write("                        <span class=\"shop-item-price\">$1.99</span>\n");
      out.write("                        <button class=\"btn btn-primary shop-item-button\" type=\"button\">ADD TO CART</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"shop-item\">\n");
      out.write("                    <span class=\"shop-item-title\">Protein Shake</span>\n");
      out.write("                    <img class=\"shop-item-image\" src=\"images/protein.png\">\n");
      out.write("                    <div class=\"shop-item-details\">\n");
      out.write("                        <span class=\"shop-item-price\">$6.99</span>\n");
      out.write("                        <button class=\"btn btn-primary shop-item-button\" type=\"button\">ADD TO CART</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                  <div class=\"shop-item\">\n");
      out.write("                    <span class=\"shop-item-title\">Soda</span>\n");
      out.write("                    <img class=\"shop-item-image\" src=\"images/soda.png\">\n");
      out.write("                    <div class=\"shop-item-details\">\n");
      out.write("                        <span class=\"shop-item-price\">$2.99</span>\n");
      out.write("                        <button class=\"btn btn-primary shop-item-button\" type=\"button\">ADD TO CART</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        ");
      out.write("\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"footer\">\n");
      out.write("                <div class=\"footer-left\">\n");
      out.write("                    <h5>Hours of Operation:</h5>\n");
      out.write("                    <h6>Mon-Thur 9AM-11PM</h6>\n");
      out.write("                    <h6>Friday-Sat 11AM-12AM</h6>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"footer-center\">\n");
      out.write("                    <h6>680 Arntson Rd, Suite 161</h6>\n");
      out.write("                    <h6>Marietta, GA</h6>\n");
      out.write("                    <h6>30060</h6>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"footer-right\">\n");
      out.write("                    <h6>770-555-1212</h6>\n");
      out.write("                    <h6>MomAndPopPizzeria.com</h6>\n");
      out.write("                    <h6>&copy; Mom's and Pop's Pizzeria</h6>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("         <script>\n");
      out.write("            function Logout() {\n");
      out.write("                alert(\"You're now logged out\");\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
