package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class LandingPage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta name=\"viewport\" content=\"width=device-width initial-scale=1.0\">\n");
      out.write("        <link href = \"style.css\" rel = \"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <title>Landing Page</title>\n");
      out.write("        <script> \n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id =\"home\">\n");
      out.write("            <h5 id=\"homeMainText\"><img id=\"toplogo\" src= '../TeamOneByte/images/logo.png'> Mom's and Pop's Pizzeria</h5>\n");
      out.write("        </div>\n");
      out.write("         ");
      out.write("\n");
      out.write("        <nav class =\"navbar\">\n");
      out.write("            <div class =\"navbar-left\">\n");
      out.write("                <a href = \"LandingPage.jsp\">Home</a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"navbar-right\">\n");
      out.write("                <a href = \"Login.jsp\">Login</a>\n");
      out.write("                <a href = \"#\">Create Account</a>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <div class=\"container-fluid\" id=\"aboutUs\">\n");
      out.write("            \n");
      out.write("            <h3> <img id=\"logo\" src= '../TeamOneByte/images/logo.png'></h3>\n");
      out.write("\n");
      out.write("            <h1 id=\"about\"> Welcome to Mom's and Pop's Pizzeria</h1>\n");
      out.write("            \n");
      out.write("            <h1 id =\"about2\">Please login or create an account to view menu and place orders<br/>We look forward to your business.</h1>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("         ");
      out.write("\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"footer\">\n");
      out.write("                <div class=\"footer-left\">\n");
      out.write("                    <h5>Hours of Operation:</h5>\n");
      out.write("                    <h6>Mon-Thur 9AM-11PM</h6>\n");
      out.write("                    <h6>Friday-Sat 11AM-12AM</h6>\n");
      out.write("                </div>\n");
      out.write("                <div class =\"footer-center\">\n");
      out.write("                    <h6>680 Arntson Rd, suite 161</h6>\n");
      out.write("                    <h6>Marietta, GA</h6>\n");
      out.write("                    <h6>30060</h6>\n");
      out.write("                </div>\n");
      out.write("                <div class =\"footer-right\">\n");
      out.write("                    <h6>770-555-1212</h5>\n");
      out.write("                    <h6>MomAndPopPizzeria.com</h6>\n");
      out.write("                    <h6>&copy; Mom's and Pop's Pizzeria</h6>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
