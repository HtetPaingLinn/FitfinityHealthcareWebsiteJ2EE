<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./assets/image/logo/logo.svg" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="./assets/css/signInCSS.css">
    <title> Fitfinity | Log In </title>
</head>
<body>

    <!----------------------- Main Container -------------------------->

     <div class="container d-flex justify-content-center align-items-center min-vh-100">

    <!----------------------- Login Container -------------------------->

       <div class="row border rounded-5 p-3 bg-white shadow box-area">

    <!--------------------------- Left Box ----------------------------->

       <div class="col-md-5 rounded-4 d-flex justify-content-center align-items-center flex-column left-box" style="background: #0bb288;">
           <div class="featured-image mb-3">
            <img src="./assets/image/LoginPage/loginLogo.png" class="img-fluid" style="width: 500px; background-color: #0bb288;">
           </div>
           <p class="text-white fs-2" style="font-family: 'Courier New', Courier, monospace; font-weight: 600;">Be Verified</p>
           <small class="text-white text-wrap text-center" style="width: 17rem;font-family: 'Courier New', Courier, monospace;">Join experienced for Infinity Healthcare</small>
       </div> 

    <!-------------------- ------ Right Box ---------------------------->
        
       <div class="col-md-7 right-box">
          <div class="row align-items-center">
          <form action="${pageContext.request.contextPath}/SignINServlet" method="post">
                <div class="header-text mb-4">
                     <h2>Hello, Again</h2>
                     <p>We are happy to have you back.</p>
                </div>
               
                <div class="input-group mb-3">
                    <input type="text" name="loginEmail" class="form-control form-control-lg bg-light fs-6" value="${param.loginEmail}" placeholder="Email address">
                    
                    <% String message = (String) request.getAttribute("message3");
        		   	   if (message!= null)
        		   	   {
        		   %>
        		   
        		   <div class="error-message"> <%= message %> </div> 
        		   <% } %>
        		   
                </div>
                
                <br>
                
                <div class="input-group mb-1">
                    <input type="password" name="loginPwd" class="form-control form-control-lg bg-light fs-6" value="${param.loginPwd}" placeholder="Password">
                    
                    <% String message2 = (String) request.getAttribute("message2");
        		   	   if (message2!= null)
        		   	   {
        		   %>
        		   
        		   <div class="error-message"> <%= message2 %> </div> 
        		   <% } %>
                </div>
                <br>
                
                <div class="input-group mb-3">
				    <select name="userRole" class="form-select form-select-lg bg-light fs-6">
				    	<option value="" disabled selected="hidden"> Who you are... </option>
				        <option value="Patient">Patient</option>
				        <option value="Doctor">Doctor</option>
				        <option value="Admin">Admin</option>
				    </select>
				</div>
                
                <div class="input-group mb-5 d-flex justify-content-between">
                </div>
                <div  class="input-group mb-3">
                    <button style=" background-color: #0bb288; color: white;" class="btn btn-lg w-100 fs-6">Login</button>
                </div>
                </form>

                <!-- Removed form tags around this anchor tag -->
                <div class="input-group mb-3">
                    <a class=" w-100" href="./guestDashboard.jsp">
                        <button class="btn btn-lg btn-light w-100 fs-6"><i class="fa-solid fa-user-large"></i><small>Sign In as Guest</small></button>
                    </a>
                </div>

                <div class="row">
                    <small>Don't have account? <a href="./register.jsp">Sign Up</a></small>
                </div>
          </div>
       </div> 

      </div>
    </div>

</body>
</html>
