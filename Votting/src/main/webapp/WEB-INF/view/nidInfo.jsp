<jsp:include page="/WEB-INF/view/common/header2.jsp" />

<div id="main" class="col-sm-12">
<!-- Start NID info   -->
  <div id="wrapper"> 
     <div id="content"> 
     <div class="row col-md-4"></div>
     <div class="row col-md-4"> 
        <form action="/votingPage" method="POST">
     <div id="div1">
     <h1>Search Info</h1>
          
          	<div class="form-group">
			    <label for="nid">NID no. :</label>
			    <input type="text" class="form-control" id= "nid1" name="nid1">
			</div>
			
			<div class="form-group">
			    <label for="dob">Date of Birth:</label>
			    <input type="date" class="form-control" id ="dob1" name="dob">
			</div>
			
			 <center><button type="button" class="btn btn-info" id="formSubmit">Send OTP</button></center>
			  <center><h4 style="color: red;" id="err"></h4></center>
			  <center><h4 style="color: red;">${err}</h4></center>
     </div>
     <div id="div2">
      <h1>OTP Validation</h1>
          
          <div class="form-group">
			    <label for="name">Enter OTP</label>
			    <input type="text" class="form-control" name="otp">
			</div>

			 <center><button type="submit" class="btn btn-info">Submit</button></center>
     </div>
     
       
         
          </form> 
          
           </div>
         <div class="row col-md-4"></div>   
	</div>
  </div>
  <!-- End NID info   -->

</div> 
<!-- End Otp   -->
<jsp:include page="/WEB-INF/view/common/footer.jsp"/>


<script>

$("#div2").hide();
$("#formSubmit").on(     "click", function(){
	$.ajax('http://localhost:8080/checkNID', {
	    type: 'POST',  // http method
	    data: {
	    	nid : $("#nid1").val(),
	    	dob : $("#dob1").val()
	    },
	    success: function (data, status) {
	    	console.log(data);
	    	if(data == "true"){
	    		console.log("true check")
	    		$("#div1").hide();
	    		$("#div2").show();
	    	}else{
	    		$("#err").text("NID/DOB doesn't match!");
	    	}
	        
	    }
	});
})


</script>