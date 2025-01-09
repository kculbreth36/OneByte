<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Success</title>
    <link href="style.css" rel="stylesheet" type="text/css">
    <style> 
        .container-fluid {
            margin-top: 40px;
        }
    </style>
</head>
<body>
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
            <div class="cart-dropdown">
                <a href="#">Cart</a>
                <div class="cart-dropdown-content">
                    <section class="container content-section">
                        <h2 class="section-header">Checkout Cart</h2>
                        <div class="cart-row">
                            <span class="cart-item cart-header cart-column">Item</span>
                            <span class="cart-price cart-header cart-column">Price</span>
                            <span class="cart-quantity cart-header cart-column">Quantity</span>
                        </div>
                        <div class="cart-items"></div>
                        <div class="cart-total">
                            <strong class="cart-total-title">Amount Due</strong>
                            <span class="cart-total-price">$0</span>
                        </div>
                        <button class="btn btn-primary btn-purchase" type="submit" onclick="form.action ='Payment.jsp';">Order</button>
                    </section>
                </div>
            </div>
            <a href="#">Contact</a>
            <a href="LandingPage.jsp">Logout</a>
        </div>
    </nav>
    <div class="container-fluid" id="aboutUs">
            <h1>Order Placed Successfully!</h1>
        <p>Thank you for your order. Your order details are as follows:</p>
        
        <div class="order-details">
            <h3>Order Summary</h3>
            <p><strong>Order Number:</strong> #34</p>
            <p><strong>Items Ordered:</strong></p>
            <ul>
                <li>1x Wings - $8.99</li>
                <li>1x Fries - $4.98</li>
                <li>1x Apple Juice - $2.99</li>
                <li>1x Cookie - $2.99</li>
            </ul>
            <p><strong>Total Amount:</strong> $19.96</p>
            <p><strong>Estimated Delivery Time:</strong> 45 minutes</p>
        </div>
        
        <p><a href="HomePage.jsp">Return to Home Page</a></p>
    </div>
</body>
</html>
