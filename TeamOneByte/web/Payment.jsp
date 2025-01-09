<%@page import="Business.Customer"%>
<%@page import="Business.Order"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- Payment Information Page, to collect type of order and payment--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>Payment Page</title>
        <style>
            .row {
                display: flex;
            }
            
            .column1, .column2 {
                width: 50%;
                padding: 20px;
                box-sizing: border-box;
            }
            
            .column1 {
                border-right: 2px solid black;
                border-left: 2px solid black;
            }
            
            .left-side, .right-side {
                width: 100%;
                text-align: center;
                margin-bottom: 20px;
                color: black;
            }
            
            input[type="text"], #credit-card input[type="text"], #credit-card select, #credit-card input[type="month"] {
                width: 80%;
                padding: 8px;
                margin: 10px 0;
                box-sizing: border-box;
            }
            
            #address label, #credit-card-details label {
                text-align: left;
                color: black;
            }
            
            h4 {
                color: black;
            }
            
            #credit-card {
                display: none; 
                margin-top: 20px;
                text-align: left;
                color:black;
            }
            
            #check-image, #cash-details {
                display: none;
                margin-top: 20px;
                font-size: 20px;
                color: black;
                padding-top:20px;
            }
          
            #total-section {
                margin-top: 20px;
                text-align: center;
                color: black;
                display: flex;
                justify-content: center;
                align-items: center; 
                padding-top: 30px;
            }
            
            #total-section label {
                font-weight: bold;
                margin-right: 20px;
            }
            
            #total-section input {
                width: 100px;
                padding: 5px;
                text-align: center;
                box-sizing: border-box;
                margin-right: 20px;
            }
            
            #submit-button {
                background-color: red;
                color: white;
                width: 100px;
                padding: 5px 5px;
                font-size: 16px;
                border: none;
                cursor: pointer;
            }
            
            #submit-button:hover {
                background-color: darkred;
            }
        </style>
        <script>
            function togglePaymentDetails() {
                var creditOption = document.getElementById("credit");
                var cardDetails = document.getElementById("credit-card");
                var checkOption = document.getElementById("check");
                var checkImage = document.getElementById("check-image");
                var cashOption = document.getElementById("cash");
                var cashDetails = document.getElementById("cash-details");
                
                if (creditOption.checked) {
                    cardDetails.style.display = "block";
                    checkImage.style.display = "none";
                    cashDetails.style.display = "none";
                } else if (checkOption.checked) {
                    cardDetails.style.display = "none";
                    cashDetails.style.display = "none";
                    checkImage.style.display = "block";
                } else if (cashOption.checked) {
                    cardDetails.style.display = "none";
                    checkImage.style.display = "none";
                    cashDetails.style.display = "block";
                } else {
                    cardDetails.style.display = "none";
                    checkImage.style.display = "none";
                    cashDetails.style.display = "none";
                }
            }
        </script>
    </head>
    <body>
        <div id ="home">
            <h5 id="homeMainText"><img id="toplogo" src= '../TeamOneByte/images/logo.png'> Mom's and Pop's Pizzeria</h5>       
        </div>
        <nav class="navbar">
            <div class="navbar-left">
                <a href="HomePage.jsp">Home</a>
            </div>
            <div class="navbar-right">
                <a href="HomePage.jsp">Back</a>
            </div>
        </nav>
        <div class="row">
            <div class="column1">
                <form class="left-side" action="#">
                    <h4>*Order Type</h4>
                    <input type="radio" id="pickup" name="orderType" value="Pick Up" required>
                    <label for="pickup">Pick Up</label>
                    <input type="radio" id="delivery" name="orderType" value="Delivery">
                    <label for="delivery">Delivery</label>
                </form>
                <form id="address" action="custLogin.jsp">
                    <label for="street">*Street</label><br/>
                    <input type="text" id="street" name="address" required placeholder="Enter your street address here.."/><br/>
                    
                    <label for="city">*City</label><br/>
                    <input type="text" id="city" name="address" required placeholder="Enter your city here.."/><br/>
                    
                    <label for="zip">*Zip</label><br/>
                    <input type="text" id="zip" name="address" required placeholder="Enter your zip here.."/><br/>
                    
                    <label for="state">*State</label><br/>
                    <input type="text" id="state" name="address" required placeholder="Enter your state here.."/><br/>
                    
                    <label for="apt">*Apt#</label><br/>
                    <input type="text" id="apt" name="address" required placeholder="Enter your apartment number here.."/><br/>
                </form>
            </div>
            <div class="column2">
                <form class="right-side" action="#">
                    <h4>Payment Type</h4>
                    <input type="radio" id="credit" name="payment" value="credit" required onclick="togglePaymentDetails()">
                    <label for="credit">Credit Card</label>
                    <input type="radio" id="cash" name="payment" value="cash" onclick="togglePaymentDetails()">
                    <label for="cash">Cash</label>
                    <input type="radio" id="check" name="payment" value="check" onclick="togglePaymentDetails()">
                    <label for="check">Check</label>

                    <div id="credit-card">
                        <label for="nameOnCard">*Name on Card</label><br/>
                        <input type="text" id="nameOnCard" name="creditCard"  placeholder="Enter name on card"><br/>

                        <label for="cardType">*Card Type</label><br/>
                        <select id="cardType" name="creditCard">
                            <option value="discover">Discover</option>
                            <option value="capitalone">Capital One</option>
                            <option value="visa">Visa</option>
                            <option value="mastercard">Master Card</option>
                            <option value="american">American Express</option>
                        </select><br/>

                        <label for="cardNum">*Card Number</label><br/>
                        <input type="text" id="cardNum" name="creditCard"  placeholder="Enter card number"><br/>

                        <label for="cvv">*CVV</label><br/>
                        <input type="text" id="cvv" name="creditCard" placeholder="Enter CVV"><br/>

                        <label>*Expiration Date (MM/YY)</label><br/>
                        <input type="number" id="month" name="expDate"  placeholder="MM" min="1" max="12" style="width: 38%;" /> 
                        <input type="number" id="exp" name="expDate"  placeholder="YY" min="24" max="32" style="width: 38%;" /><br/>
                    </div>
                    <div id="check-image">
                        <img src='../TeamOneByte/images/check.png' alt="Example Check" />
                    </div>
                    <div id="cash-details">
                        <p>Please have your cash ready. <br/> If your order is delivery, please note our drivers do not carry large bills for their safety.</p>
                    </div>
                     <div id="total-section">
                        <%-- <label for="total">Total:</label> --%>
                      <%--  <input type="text" id="total" name="total" value="<"">" readonly placeholder="Total amount" /> --%>
                        <button type="submit" id="submit-button" onclick=" form.action ='OrderSuccess.jsp'; ">Submit</button>
                    </div> 
                </form>
            </div>
        </div>
    </body>
</html>
