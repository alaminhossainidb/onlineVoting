<jsp:include page="/WEB-INF/view/common/adminHeader.jsp" />
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<div id="main" class="col-sm-12">
	<div id="wrapper"> 
     <div id="content">  
     <div class="row col-md-2"></div>
      <div class="row col-md-8">
         <form action="/saveParty" method="POST" enctype="multipart/form-data">
          	<h1>Add Party</h1>
          
          	<div class="form-group">
			    <label for="partyName">Party Name:</label>
			    <input type="text" class="form-control" name="partyName">
			</div>
			
			<div class="form-group">
			    <label for="partyCode">Party Code:</label>
			    <input type="text" class="form-control" name="partyCode">
			</div>
			
			<div class="form-group">
			    <label for="partySymbol">Party Symbol:</label>
			    <input accept=".jpg" name="photo" type="file" class="form-control" name="partySymbol">
			</div>
			
			 <center><button type="submit" class="btn btn-info">Save</button></center>
          </form>  
          </div>
	    <div class="row col-md-2"></div>
  </div>
  </div>
</div> 

<jsp:include page="/WEB-INF/view/common/footer.jsp"/>