<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Bot Verification</title>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .title
		{
 		 font-size: 1.5em;
  		 font-weight: 100;
  		 margin-top: 10px;
  		 
		}
    </style>
</head>
<body>
    <form action="verify.jsp" method="POST">
    	<h3 class="title">Verifying that you are not a robot...</h3>
        <div class="g-recaptcha" data-sitekey="6LcnjYEpAAAAAFJAt_wnPHW_6meG7mDyNmPkQ5IM"></div>
        
        <br/>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
