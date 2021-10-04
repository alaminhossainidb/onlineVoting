<jsp:include page="/WEB-INF/view/common/header2.jsp" />

<div id="main" class="col-sm-12">

  <div id="wrapper"> 
     <div id="content">
     <div class="row col-md-4"></div>
     <div class="row col-md-4">   
          <form action="/votingPage" method="POST">
          <h1>OTP Validation</h1>
          
          <div class="form-group">
			    <label for="name">Enter OTP</label>
			    <input type="text" class="form-control" name="otp">
			</div>
          
          	<div class="form-group">
			   <input type="hidden" class="form-control" value="${nid}" name="nid">
			</div>
			
			<div class="form-group">
			    <input type="hidden" class="form-control" value="${dob}" name="dob">
			</div>
			
			 <center><button type="submit" class="btn btn-info">Submit</button></center>
          </form> 
           </div>
         <div class="row col-md-4"></div>     
	</div>
  </div>
</div> 
<jsp:include page="/WEB-INF/view/common/footer.jsp"/>