<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="com.tech.blog.entities.Message" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Login Page</title>
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
  
  
<!--       navbar -->

     <%@include file="navbar.jsp" %>
  
     <main  class="d-flex align-items-center primary-dashboard banner-background"  style="height:70vh">
       <div class="container">
             <div class="row">
                   <div class="col-md-4 offset-md-4">
                        <div class="card">
                              <div class="card-header primary-dashboard text-white text-center">
                              <span class="fa fa-user-plus fa-3x"></span>
                                 <p>Log in</p>                  
                              </div>
                              
                               <%
                                Message m = (Message) session.getAttribute("msg");
                                if (m != null) {
                            %>
                            <div class="alert <%= m.getCssClass() %>" role="alert">
                                <%= m.getContent() %>
                            </div> 


                            <%        
                                    session.removeAttribute("msg");
                                }

                            %>
                              
                              <div class="card-body">
                              
						       <form action="LoginServlet" method="post">
								  <div class="mb-3">
								    <label for="exampleInputEmail1" class="form-label">Email address</label>
								    <input name ="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
								    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
								  </div>
								  <div class="mb-3">
								    <label for="exampleInputPassword1" class="form-label">Password</label>
								    <input name ="user_password"  type="password" class="form-control" id="exampleInputPassword1">
								  </div>
							
								  <div class="container text-center">
								  <button type="submit" class="btn btn-primary">Submit</button>
								  </div>
								</form>
							</div>
								                              
                           
                        
                        </div>
                   </div>
              </div>
       
       </div>
     
     </main>
 


     <!-- javascript -->
      <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	 <script type="text/javascript" src="js/myjs.js"></script>
</body>
</html>