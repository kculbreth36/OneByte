<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href = "style.css" rel = "stylesheet" type="text/css"/>
    <script src="ShoppingCart.js" async></script>
    <title>Build Pizza</title>
    <style>
      
        .container {
            display: flex;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 80%;
            margin-top: 20px;
            max-width: 1200px;
        }
        
        .shop-item-price {
            flex-grow: 1;
            color: black;
            }
        
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            height: 60px;
            border: 1px solid black;
            margin: 0;
            background-color: #F5BD6C;
            z-index: 1000;
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

        .left-side {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            border-right: 1px solid #ccc;
            margin-top: 125px;
        }

        .pizza-image {
            max-width: 100%;
            height: auto;
            border-radius: 2px;
        }

        .order-button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #ff5722;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        .order-button:hover {
            background-color: #e64a19;
        }

        .right-side {
            flex: 2;
            padding: 20px;
            display: flex;
            flex-direction: column;
        }

        .section {
            margin-bottom: 20px;
            padding-bottom: 20px;
            border-bottom: 1px solid #ccc;
        }

        .section h2 {
            margin-bottom: 10px;
        }

        .section label {
            display: inline-block;
            margin-right: 20px;
            margin-bottom: 10px;
        }

        .sub-section {
            display: flex;
            flex-wrap: wrap;
            margin-top: 10px;
        }

        .sub-section h3 {
            width: 100%;
            margin-bottom: 10px;
            font-size: 18px;
            font-weight: bold;
        }

        .sub-section label {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
            width: 30%; /* Ensures labels fit neatly */
            padding-right: 10px;
        }

        input[type="radio"], input[type="checkbox"] {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div id="home">
        <h5 id="homeMainText"><img id="toplogo" src='../TeamOneByte/images/logo.png'> Mom's and Pop's Pizzeria</h5>
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
            <div class="cart-dropdown">
                <a href="#">Cart</a>
                 <%-- Shopping Cart drop down display--%>
                    <div class="cart-dropdown-content">
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
                    </div>
                </div>
                <a href="#">Contact</a>
                <a id="logout" onclick="Logout()" href = "logoutServlet">Logout</a>
        </div>
    </nav>
    <div class="container">
        <div class="left-side">
            <img src="images/pizza.png" alt="Pizza Image" class="pizza-image">
            <button class="btn btn-primary shop-item-button">Add to Cart</button>
        </div>
        <div class="right-side">
            <div class ="section">
                <h2>Size Options</h2>
                <label><input type="radio" class="btn btn-primary shop-item-button" name="size" value="small"> Small</label>
                <label><input type="radio" class="btn btn-primary shop-item-button" name="size" value="medium"> Medium</label>
                <label><input type="radio" class="btn btn-primary shop-item-button" name="size" value="large"> Large</label>
                <label><input type="radio" class="btn btn-primary shop-item-button" name="size" value="x-large"> X-Large</label>
            </div>
            <div class="section">
                <h2>Crust Options</h2>
                <label><input type="radio" name="crust" value="hand-toss"> Hand Toss</label>
                <label><input type="radio" name="crust" value="thin-crust"> Thin Crust</label>
                <label><input type="radio" name="crust" value="deep-dish"> Deep Dish</label>
            </div>
            <div class="section">
                <h2>Sauce Options</h2>
                <label><input type="radio" name="sauce" value="regular-marinara"> Regular Marinara</label>
                <label><input type="radio" name="sauce" value="spicy-marinara"> Spicy Marinara</label>
            </div>
            <div class="section">
                <h2>Toppings</h2>
                <div class="sub-section">
                    <h3>Meat</h3>
                    <label><input type="checkbox" name="meat" value="pepperoni"> Pepperoni</label>
                    <label><input type="checkbox" name="meat" value="sausage"> Sausage</label>
                    <label><input type="checkbox" name="meat" value="ham"> Ham</label>
                    <label><input type="checkbox" name="meat" value="bacon"> Bacon</label>
                    <label><input type="checkbox" name="meat" value="turkey"> Turkey</label>
                </div>
                <div class="sub-section">
                    <h3>Veggies</h3>
                    <label><input type="checkbox" name="veggies" value="spinach"> Spinach</label>
                    <label><input type="checkbox" name="veggies" value="peppers"> Peppers</label>
                    <label><input type="checkbox" name="veggies" value="black-olives"> Black Olives</label>
                    <label><input type="checkbox" name="veggies" value="pineapple"> Pineapple</label>
                    <label><input type="checkbox" name="veggies" value="mushrooms"> Mushrooms</label>
                </div>
            </div>
        </div>
    </div>
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
