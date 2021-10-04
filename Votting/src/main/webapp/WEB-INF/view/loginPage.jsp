<jsp:include page="/WEB-INF/view/common/header2.jsp" />

<div id="main" class="col-sm-12">

  <div id="wrapper"> 
     <div id="content">  
     <div class="row col-md-4"></div>
     <div class="row col-md-4">
           <form action="/login" method="POST">
          	<h1>User Login</h1>
          
          	<div class="form-group">
			    <label for="name">Username:</label>
			    <input type="text" class="form-control" name="username">
			</div>
			
			<div class="form-group">
			    <label for="password">Password:</label>
			    <input type="text" class="form-control" name="password">
			</div>
			
			 <center><button type="submit" class="btn btn-info">Login</button></center>
          </form>  
         <Center><b><h2 class="text-danger">${msg }</h2></b> </Center>  
         </div>
         <div class="row col-md-4"></div>      
	</div>
  </div>
</div> 

<jsp:include page="/WEB-INF/view/common/footer.jsp"/>