<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Panel</title>
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css">    
        <link rel="stylesheet" href="style_master1.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </head>
    <body>
    <% 
        if(session.getAttribute("username") !=null)
            {

            }
        else
        {
            String msg2 = "Please Login as Admin to Continue";
            response.sendRedirect("AdminLogin.jsp?msg2="+msg2);
        }
    %>
    <header>
        <div class="container">
            <div class="header-right" id="myheader">
                <h3><span class="logo">T</span>e<span class="logo">a</span>m<span class="logo">S</span></h3>
            </div>
	</div>
    </header>
    
    
    <div id="nav-container">
        <div class="bg"></div>
        <div class="button" tabindex="0">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </div>
        <div id="nav-content" tabindex="0">
            <dl>
                <dt><div><h3><center><font color="black">Welcome <%out.println(session.getAttribute("username")); %></font></center></h3></div></dt>
                <dt></dt>
                <hr/>
                <dt></dt>
                <dt></dt>
                <dt><input onclick="location.href='StudentList.jsp';" type="button" value="Add/Update Student" class="btn btn-outline-primary btn-lg btn-block"></dt>
                <br/>
                <dt><input onclick="location.href='InstructionList.jsp';" type="button" value="Add/Update Instructions" class="btn btn-outline-primary btn-lg btn-block"></dt>
                <br/>
                <dt><input onclick="location.href='QuestionList.jsp'"type="button" value="Add/Update Question" class="btn btn-outline-primary btn-lg btn-block"></dt>
                <br/>
                <dt><input onclick="location.href='oes.controller.LogoutAdmin'"type="button" value="Logout" class="btn btn-outline-primary btn-lg btn-block"></dt>
                <br/>
            </dl>
        </div>
    </div>
    
    <!--<center>
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6"><center><input onclick="location.href='StudentList.jsp';" type="button" value="Add/Update Student" class="btn btn-outline-primary btn-lg btn-block"></center> </div>
      <div class="col-sm-6"><center><input onclick="location.href='InstructionList.jsp';" type="button" value="Add/Update Instructions" class="btn btn-outline-primary btn-lg btn-block"></center></div>
    </div>  
  </div>
  <pre>
  </pre>
   <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6"><center><input onclick="location.href='QuestionList.jsp'"type="button" value="Add/Update Question" class="btn btn-outline-primary btn-lg btn-block"></center></div>
      <div class="col-sm-6"><center><input onclick="location.href='oes.controller.LogoutAdmin'"type="button" value="Logout" class="btn btn-outline-primary btn-lg btn-block"></center></div>
    </div>  
  </div>
  </center> -->
    </body>
</html>