<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- Home Page after a user signs into the system--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
        <link href = "style.css" rel = "stylesheet" type="text/css"/>
        <title>Home Page</title>
          <script src="ShoppingCart.js" async> </script>
    </head>
    <%-- Navigation bar used after logging in--%>
    <body>
        <div id ="home">
            <h5 id="homeMainText"><img id="toplogo" src= '../TeamOneByte/images/logo.png'> Mom's and Pop's Pizzeria</h5>   
        </div>
            <nav class="navbar">
            <div class="navbar-left">
                <a href="HomePage.jsp">Home</a>
                <div class="dropdown">
                    <a href="#">Menu</a>
                    <div class="dropdown-content">
                        <a href="PizzaBuild.jsp">Build Pizza</a>
                        <a href="Sides.jsp">Sides</a>
                        <a href="Drinks.jsp">Drinks</a>
                        <a href="Desserts.jsp">Desserts</a>
                    </div>
                </div>
                <a href="#">Profile</a>
            </div>
            <div class="navbar-right">
                 <%-- Shopping Cart drop down display--%>
                <div class="cart-dropdown">
                    <a href="#">Cart</a>
                     <form action="Home.jsp" class="cart-dropdown-content">
                        <section class="container content-section">
                            <h2 class="section-header">Checkout Cart</h2>
                            <div class="cart-row">
                                <span class="cart-item cart-header cart-column">Item</span>
                                <span class="cart-price cart-header cart-column">Price</span>
                                <span class="cart-quantity cart-header cart-column">Quantity</span>
                            </div>
                            <div class="cart-items">
        
                            </div>
                            <div class="cart-total">
                                <strong class="cart-total-title">Amount Due</strong>
                                <span class="cart-total-price">$0</span>
                                <input type="hidden" id="hiddenId" name="hiddenId"/>
                            </div>
                            <%-- Call servlet --%>
                            <button class="btn btn-primary btn-purchase" type="submit" onclick="form.action ='newOrderServlet';">Order</button>
                        </section>
                    </form>
                </div>
                <a href="#">Contact</a>
                <a id="logout" onclick="Logout()" href = "logoutServlet">Logout</a>
            </div>
        </nav>
       <%-- Logo picture in middle of home page--%>
        <div class="container-fluid" id="aboutUs">
            <h3> <img id="logo" src= '../TeamOneByte/images/logo.png'></h3>
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
        <script>
            function Logout() {
                alert("You're now logged out");
            }
        </script>
    </body>
</html>
