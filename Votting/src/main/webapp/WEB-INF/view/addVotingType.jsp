<jsp:include page="/WEB-INF/view/common/adminHeader.jsp" />
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<div id="main" class="col-sm-12">
	<div id="wrapper"> 
     <div id="content"> 
     <div class="row col-md-2"></div> 
     <div class="row col-md-8">
         <form action="/saveVotingType" method="POST">
          	<h1>Add Voting Type</h1>
          	
          <div class="form-group">
			    <label for="name">Voting Name:</label>
			    <select class="form-control" name = "name">
			    	<option value="">--- Select One ---</option>
			    	<option value="National">National</option>
			    	<option value="City-Corporation">City-Corporation</option>
			    	<option value="Upazila">Upazila</option>
			    	<option value="Union Parisad">Union Parisad</option>
			    	
			    </select>
			</div>
			
			<div class="form-group">
			    <label for="code">Voting Code:</label>
			    <input type="text" class="form-control" name="code">
			</div>
			
			<div class="form-group">
			    <label for="date">Date:</label>
			    <input type="date" class="form-control" name="date">
			</div>
			
			 <center><button type="submit" class="btn btn-info">Save</button></center>
          </form> 
          </div> 
  		<div class="row col-md-2"></div>
	       
	</div>
  </div>
</div> 

<jsp:include page="/WEB-INF/view/common/footer.jsp"/>