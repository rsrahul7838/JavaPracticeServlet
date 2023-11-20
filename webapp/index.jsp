  <?xml version="1.0" encoding="UTF-8" ?>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <%@page import ="java.sql.*" %>
  <%@page import ="com.tech.blog.helper.ConnectionProvider" %>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml">
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Home | Tech Blog</title> 
	  <!-- css -->
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	  <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	  <style>
	  .banner-background{
clip-path: polygon(30% 0%, 70% 0%, 100% 0, 99% 98%, 86% 87%, 30% 100%, 0 91%, 0 0);
	  }
	  
	  </style>
 </head>
	<body>
      <!-- 	navbar -->
	<%@include file="navbar.jsp" %>	  
	
	<!-- banner -->
	 <div class="container-fluid m-0 p-0">
	   <div class="jumbotron primary-dashboard text-white banner-background">
	       <div class="container">
			       <h3 class="display-3">Welcome, To our Project Tech Blog</h3>
			       <p>Welcome, to our Technical Blog, Keep Learning & keep Coding
			       A programming language is a way for programmers (developers) to communicate with computers. Programming languages consist of a set of rules that allows string values to be converted into various ways of generating machine code, or, in the case of visual programming languages, graphical elements.</p>
	               <p>Generally speaking, a program is a set of instructions written in a particular language (C, C++, Java, Python) to achieve a particular task.</p>
	               <button class="btn btn-outline-light btn-lg"><span class="fa fa-user-plus"></span>Start Now ! It is free</button>
	               <a href="login_page.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-suitcase fa-spin"></span>Login</a>
	               
	       </div>
	    </div>
	</div>
	
      <!-- cards -->

          <div class="container">
              <div class="row mb-2">
                 <div class="col-md-4">
                      <div class="card">
						  <div class="card-body">
						    <h5 class="card-title">Java Programming</h5>
						    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						    <a href="#" class="btn btn-primary primary-dashboard text-white">Read More..</a>
					      </div>
                      </div>
                 </div>
                  <div class="col-md-4">
                      <div class="card">
						  <div class="card-body">
						    <h5 class="card-title">Java Programming</h5>
						    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						    <a href="#" class="btn btn-primary primary-dashboard text-white">Read More..</a>
					      </div>
                      </div>
                 </div>
                  <div class="col-md-4">
                      <div class="card">
						  <div class="card-body">
						    <h5 class="card-title">Java Programming</h5>
						    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						    <a href="#" class="btn btn-primary primary-dashboard text-white">Read More..</a>
					      </div>
                      </div>
                 </div>
              
              </div>
              
              <div class="row mb-2">
                     <div class="col-md-4">
                      <div class="card">
						  <div class="card-body">
						    <h5 class="card-title">Java Programming</h5>
						    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						    <a href="#" class="btn btn-primary primary-dashboard text-white">Read More..</a>
					      </div>
                      </div>
                 </div> <div class="col-md-4">
                      <div class="card">
						  <div class="card-body">
						    <h5 class="card-title">Java Programming</h5>
						    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						    <a href="#" class="btn btn-primary primary-dashboard text-white">Read More..</a>
					      </div>
                      </div>
                 </div> <div class="col-md-4">
                      <div class="card">
						  <div class="card-body">
						    <h5 class="card-title">Java Programming</h5>
						    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						    <a href="#" class="btn btn-primary primary-dashboard text-white">Read More..</a>
					      </div>
                      </div>
                 </div>
              
              </div>
              
              
                 <div class="row">
                     <div class="col-md-4">
                      <div class="card">
						  <div class="card-body">
						    <h5 class="card-title">Java Programming</h5>
						    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						    <a href="#" class="btn btn-primary primary-dashboard text-white">Read More..</a>
					      </div>
                      </div>
                 </div> <div class="col-md-4">
                      <div class="card">
						  <div class="card-body">
						    <h5 class="card-title">Java Programming</h5>
						    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						    <a href="#" class="btn btn-primary primary-dashboard text-white">Read More..</a>
					      </div>
                      </div>
                 </div> <div class="col-md-4">
                      <div class="card">
						  <div class="card-body">
						    <h5 class="card-title">Java Programming</h5>
						    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						    <a href="#" class="btn btn-primary primary-dashboard text-white">Read More..</a>
					      </div>
                      </div>
                 </div>
              
              </div>
          </div>
	  <%  Connection con = ConnectionProvider.getConnection();	   %>
	  
       <%-- <h1>Connection is : <%= con %> </h1>  --%>
	  
      <!-- javascript -->
      <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	 <script type="text/javascript" src="js/myjs.js"></script>
	</body>
	  
</html>