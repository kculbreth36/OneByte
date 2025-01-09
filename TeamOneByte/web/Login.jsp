<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- * This is the Customer Login Page. 
     * A customer attempts to login.
     * IF pw or email dont match they get an error. Must meet field requirments
     * If success a customer object is created for the session and they are brought to home page
--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
        <link href = "style.css" rel = "stylesheet"/>
        <title>Login Page</title>
        <style>
            .signup {
                display: flex;
                background-color: #F5BD6C;
                margin: 30px;
                padding: 20px;
                box-sizing: border-box;
            }

            .signup-left {
                flex: 50%;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center; 
                border-right: 2px solid black;
            }

            .signup-right {
                flex: 50%;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center; 
                border-left: 1px solid black;
            }

            #login {
                display: flex;
                flex-direction: column;
                align-items: center; 
                padding: 0;
                margin: 0;
                width: 80%;
                color: black;
            }

            input[type="text"], input[type="email"], select, textarea {
                padding: 10px;
                border: 2px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;  
                margin-top: 10px;
                margin-bottom: 10px;
                resize: vertical;
                width: 100%;  
                height: 40px;  
            }   


            input[type=submit] {
                padding: 10px 30px;          
                border-radius: 4px;         
                background-color: red;         
                color: white;                  
                border: none;                 
                margin: 10px 5px 0 0;         
                cursor: pointer;    
                font-size: 20px;
            }

            label {
                width: 100%; 
                box-sizing: border-box; 
                text-align: center; 
                font-family: Arial, sans-serif, "Times New Roman";
                color: white;
                margin-bottom: 10px;
                padding: 10px;
            }

            input[type=submit]:hover, input[type=reset]:hover {
                background-color: darkred;     
            }

            #loginBody {
                background-color: #F5BD6C;
                margin: 30px;
                padding: 20px;
                position: relative;
            }

            #loginHeader {
                color: white;
                text-align: center;
                margin-top: 5px;
                font-size: 38px;
                font-family: Arial, sans-serif, "Times New Roman";
                text-shadow: 1px 0 0 #000, 0 -1px 0 #000, 0 1px 0 #000, -1px 0 0 #000;
            }

            #loginLogo {
                width: 45%;
                height: 45%;
                filter: contrast(120%);
            }

            #forgot {
                color: blue;
                padding-bottom: 10px;
            }
        </style>
    </head>
    <body>
        <div id ="home">
            <h5 id="homeMainText"><img id="toplogo" src= '../TeamOneByte/images/logo.png'> Mom's and Pop's Pizzeria</h5>
               
        </div>
       <nav class ="navbar">
            <div class ="navbar-left">
                <a href = "LandingPage.jsp">Home</a>
            </div>
            <div class="navbar-right">
                <a href = "Login.jsp">Login</a>
                <a href = "#">Create Account</a>
            </div>
        </nav>
        
        <div class="signup">
            <div class ="signup-left">
                <h1 id="loginHeader">Sign In</h1>
       
                <form id="login"  action="custLogin.jsp"> 
            
                    <label for="username">Username</label>
                    <input type="email" id="username" name="username" required placeholder="Enter your Email here.."
                    pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" 
                    title="Please enter a valid email address (e.g., tester@gmail.com)."/>
            
                    <label for="custPw">Password</label>
                    <input type="text" id="custPw" name="custPw" required placeholder="Enter your Password here.."
                     pattern="^(?=.*[A-Z])(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,}$"
                    title="Password must be at least 8 characters long, contain at least one uppercase letter, and one special character." />
                    
                    <a id ="forgot" href = "passwordReset.html">Forgot Password?</a>
                    <input type="submit" value="Login" onclick=" form.action ='custLoginServlet'; ">              <%-- // "form.action ='custLoginServlet'; " Will need to change the backend, to check and lead to this page  --%>
                    
                </form>
            </div>
            <div class =" signup-right">
                   <img id="loginLogo" src= '../TeamOneByte/images/logo.png'></>
                   <h3 id="loginHeader">Create<br/> Account</h3>
                   
                   <input type="submit" value="Sign up" onclick="form.action ='createAcct'; ">
            </div>
        </div>
        <%
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) {
            %>
            <script type="text/javascript">
                alert("<%= errorMessage %>");
            </script>
            <%
        }
        %>
        
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
