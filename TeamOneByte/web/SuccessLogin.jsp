<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width initial-scale=1.0">
        <link href = "style.css" rel = "stylesheet" type="text/css"/>
        <title>Successful Login Page</title>
        <script>
            setTimeout(function() {
                window.location.href = "HomePage.jsp";
            }, 3000); 
        </script>
    </head>
    <style>
        body {
            text-align: center;
            padding: 10px;
            background-color: #F5BD6C;
            display: flex;
            flex-direction: column;
        }
    </style>
    <body id = "loginSuccess">
         <h1>Successful Login! You are now being redirected..</h1>

        <p>If you are not redirected click here:</p>
        <a href="HomePage.jsp">Home Page</a>
    </body>
</html>
