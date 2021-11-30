<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="oes.controller.ValidateAdmin"%>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link rel="stylesheet" href="style_login.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style type="text/css">
	li
	{
		float: left;
	}
	ul
	{
	
		list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;
		background-color:#333; 
	}
	li a
	{
		display: inline-block;
		color: white;
		text-align: center;
		padding: 14px 16px;
		text-decoration: none; 
	}
	li a:HOVER {
	background-color: aqua;
}
</style>
<title>Admin Login</title>

</head>
<body>
    <header>
        <div class="container">
            <div class="header-right" id="myheader">
                <h3><span class="logo">T</span>e<span class="logo">a</span>m<span class="logo">S</span></h3>
            </div>
	</div>
    </header>
    <font color="white"><center><h1>Admin Login</h1></center></font>
    <font color="red" >
	<%
            if(request.getParameter("msg2") != null)
		out.print(request.getParameter("msg2"));
	%>
    </font>
    <font color="green" >
        <%
            if(request.getParameter("msg1") != null)
                out.print(request.getParameter("msg1"));
	%>
    </font>
    
    <div class="wrapper">
        <div class="title">Admin Login Form</div>
        <form action="oes.controller.ValidateAdmin" method = "post">
            <div class="field2">
                <select id="role" name="role" autofocus>
			<optgroup label="Role">
				<option value="Student">Admin</option>
			</optgroup>
		</select>
            </div>
            <div class="field">
                <input type="text" name="uname" required>
                <label>Username</label>
            </div>
            <div class="field">
                <input type="password" id="password" name="pass" required>
                        <i class="fa fa-eye" id="togglePassword"></i>
                <label>Password</label>
            </div>
            <script>
		const togglePassword = document.querySelector('#togglePassword');
		const password = document.querySelector('#password');

		togglePassword.addEventListener('click', function (e) {
                    // toggle the type attribute
                    const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
                    password.setAttribute('type', type);
                    // toggle the eye slash icon
                    this.classList.toggle('fa-eye-slash');
		});
            </script>
            <div class="content">
                <div class="checkbox">
                  <input type="checkbox" id="remember-me">
                  <label for="remember-me">Remember me</label>
                </div>
                <div class="pass-link">
                    <a href="#">Forgot password?</a>
                </div>
            </div>
            <div class="field">
                <input type="submit" value="Login">
            </div>
            <div class="signup-link">Return to Home Page <a href="index.html">Home Page</a></div>
        </form>
    </div>
	<!-- <form action="oes.controller.ValidateAdmin" method="POST">
		<pre>
			Username 		:	<input type="text" name="uname">	 
			Password 	        :       <input type="password" name="pass">	 
						 	<input  onclick="location.href='index.html'" type="button" value="Exit" class="btn btn-outline-primary">          <input type="submit" value="Login" class="btn btn-outline-primary">
							
		</pre>
	</form> -->

    </body>
</html>















