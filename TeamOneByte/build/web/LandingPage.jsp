<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- Landing Page is the page users land on when entering the site--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
        <link href = "style.css" rel = "stylesheet" type="text/css"/>
        <title>Landing Page</title>
        <script> 
        </script>
    </head>
    <body>
        <div id ="home">
            <h5 id="homeMainText"><img id="toplogo" src= '../TeamOneByte/images/logo.png'> Mom's and Pop's Pizzeria</h5>
        </div>
         <%-- Navigation before log ing--%>
        <nav class ="navbar">
            <div class ="navbar-left">
                <a href = "LandingPage.jsp">Home</a>
            </div>
            <div class="navbar-right">
                <a href = "Login.jsp">Login</a>
                <a href = "#">Create Account</a>
            </div>
        </nav>
        <div class="container-fluid" id="aboutUs">
            
            <h3> <img id="logo" src= '../TeamOneByte/images/logo.png'></h3>

            <h1 id="about"> Welcome to Mom's and Pop's Pizzeria</h1>
            
            <h1 id ="about2">Please login or create an account to view menu and place orders<br/>We look forward to your business.</h1>
            
        </div>
         <%-- Standard footer on most screeens --%>
        <footer>
            <div class="footer">
                <div class="footer-left">
                    <h5>Hours of Operation:</h5>
                    <h6>Mon-Thur 9AM-11PM</h6>
                    <h6>Friday-Sat 11AM-12AM</h6>
                </div>
                <div class ="footer-center">
                    <h6>680 Arntson Rd, suite 161</h6>
                    <h6>Marietta, GA</h6>
                    <h6>30060</h6>
                </div>
                <div class ="footer-right">
                    <h6>770-555-1212</h5>
                    <h6>MomAndPopPizzeria.com</h6>
                    <h6>&copy; Mom's and Pop's Pizzeria</h6>
                </div>
            </div>
        </footer>
    </body>
</html>
