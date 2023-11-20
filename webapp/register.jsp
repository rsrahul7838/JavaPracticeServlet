<?xml version="1.0" encoding="UTF-8" ?>
  <%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
     <title>Register here</title>

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
           <!--  navbar -->
           <%@include file="navbar.jsp" %>
        <main class="primary-dashboard p-5  banner-background style="padding-bottom:50px;">
          <div class="container">
          
		          <div class="row">
		          
			           <div class="col-md-4 offset-md-4">
			               <div class="card">
			            
			                     <div class="card-header text-center primary-dashboard">
			                        <span class="fa fa-id-badge	"></span>
			                        <br/>
			                          <p>Register Here..</p>
			            
			                      </div>
			                      <div class="card-body">
			                           
			                           <form action="RegisterServlet" id="reg-form" method="post">
			                           
										  <div class="mb-3">
										    <label for="user_name" class="form-label">User Name</label>
										    <input type="text" class="form-control" name="user_name" id="user_name"  placeholder="Enter User Name..">
										  </div>
										  
										  
										  <div class="mb-3">
										    <label for="exampleInputEmail1" class="form-label">Email address</label>
										    <input type="email"  name="user_email"  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
										    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
										  </div>
										  
										  <div class="mb-3">
										    <label for="exampleInputPassword1" class="form-label">Password</label>
										    <input  name="user_password"  type="password" class="form-control" id="exampleInputPassword1">
										  </div>
										  
										   
										  <div class="mb-3">
										    <label for="gender" class="form-label">Select Gender</label>
										    <br/>
										    <input type="radio" class="form-check-input" id="gender" name="gender" value="male"/>Male
										    <input type="radio" class="form-check-input" id="gender" name="gender" value="female"/>Female
										    
										  </div>
										  
										  <div class="mb-3">
										    <textarea name="about"  class="form-control" placeholder="Enter something about yourself" id="" rows="5" ></textarea>
										  
										  </div>
										  
										  
										  <div class="mb-3 form-check">
										    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
										    <label class="form-check-label" for="exampleCheck1">Agree Terms & Condition</label>
										  </div>
										  
										  <br/>
									<div class="container text-center" id="loader"  style="display:none;">
									<span class="fa fa-refresh fa-spin fa-4x" />
										<h4>Please wait...</h4>
									</div>
										<br/>
								<button id="submitt-btn" type="submit" class="btn btn-primary">Submit</button>
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
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	 <script type="text/javascript" src="js/myjs.js"></script>
	 <script>
	 $(document).ready(function () {
         console.log("loaded........")

         $('#reg-form').on('submit', function (event) {
             event.preventDefault();



             let form = new FormData(this);
			 
			 $("#submitt-btn").hide();
			 $("#loader").show();
			 
			 /* now send data to register servlet */
/* 			 {} is a object */
			 
			 $.ajax({
				 
				 url:"RegisterServlet",
				 type:'post',
				 data: form,
				 success: function(data, textStatus, jqXHR){
					 console.log(data)
					 
					 $('#submitt-btn').show();
					 $('#loader').hide();
					 
					 if(data.trim()==='done'){
						 swal("Registered Successfully we are redirecting to login page")
						 .then((value) => {
							 window.location = "login_page.jsp"
						 });
						 
					 }else{
						 swal(data);
					 }
					 
					
				 },
				 error: function (jqXHR, textStatus, errorThrown){
					 
					 $("#submitt-btn").show();
					 
					 $("#loader").hide(); 
					 
					 swal("Something went wrong....")

					 
				 },
				 processData: false,
				 contentType : false
				 
			 });
			 
		 });
	 });
	 
	 </script>
</body>
</html>