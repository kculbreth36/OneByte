<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css"/>
         <script src="ShoppingCart.js" async></script>
        <title>Sides Page</title>
        <style>
            .navbar {
                display: flex;
                justify-content: space-between;
                align-items: center;
                height: 60px;
                border: 1px solid black;
                margin: 0;
                background-color: #F5BD6C;
            }
            
             .navbar-left, .navbar-right {
                display: flex;
                align-items: center;
                height: 100%;
            }

            .navbar a {
                text-decoration: none;
                color: #333;
                font-weight: bold;
                padding: 10px 20px;
                background-color: #F2D2A7;
                flex: 1;
                display: flex;
                align-items: center;
                justify-content: center;
                height: 100%;
                border-left: 1px solid black;
                border-right: 1px solid black;
            }
        </style>
    </head>
    <body>
        <div id="home">
            <h5 id="homeMainText"><img id="toplogo" src='../TeamOneByte/images/logo.png'> Mom's and Pop's Pizzeria</h5>
        </div>
        <%-- Navigation bar used after logging in--%>
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
                    <form action="Sides.jsp" class="cart-dropdown-content">
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
                            <button class="btn btn-primary btn-purchase" type="submit" onclick="form.action ='newOrderServlet';">Order</button>
                        </section>
                    </form>
                </div>
                <a href="#">Contact</a>
                <a id="logout" onclick="Logout()" href = "logoutServlet">Logout</a>
            </div>
        </nav>
            <%-- List items for Sides--%>
             <section class="container content-section">
            <h2 class="section-header">Sides</h2>
            <div class="shop-items">
                <div class="shop-item">
                    <span class="shop-item-title">Wings</span>
                    <img class="shop-item-image" src="images/Wings.png">
                    <div class="shop-item-details">
                        <span class="shop-item-price">$8.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                <div class="shop-item">
                    <span class="shop-item-title">Fries</span>
                    <img class="shop-item-image" src="images/Fries.png">
                    <div class="shop-item-details">
                        <span class="shop-item-price">$4.99</span>
                        <button class="btn btn-primary shop-item-button"type="button">ADD TO CART</button>
                    </div>
                </div>
                <div class="shop-item">
                    <span class="shop-item-title">Salad</span>
                    <img class="shop-item-image" src="images/salad.png">
                    <div class="shop-item-details">
                        <span class="shop-item-price">$6.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                <div class="shop-item">
                    <span class="shop-item-title">Boneless Wings</span>
                    <img class="shop-item-image" src="images/Boneless.png">
                    <div class="shop-item-details">
                        <span class="shop-item-price">$7.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
                  <div class="shop-item">
                    <span class="shop-item-title">Carrot Sticks</span>
                    <img class="shop-item-image" src="images/CarrotSticks.png">
                    <div class="shop-item-details">
                        <span class="shop-item-price">$2.99</span>
                        <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                    </div>
                </div>
            </div>
        </section>
        <footer>
            <div class="footer">
                <div class="footer-left">
                    <h5>Hours of Operation:</h5>
                    <h6>Mon-Thur 9AM-11PM</h6>
                    <h6>Friday-Sat 11AM-12AM</h6>
                </div>
                <div class="footer-center">
                    <h6>680 Arntson Rd, Suite 161</h6>
                    <h6>Marietta, GA</h6>
                    <h6>30060</h6>
                </div>
                <div class="footer-right">
                    <h6>770-555-1212</h6>
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

