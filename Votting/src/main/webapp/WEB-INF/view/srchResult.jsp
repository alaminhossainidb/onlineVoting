<jsp:include page="/WEB-INF/view/common/header2.jsp" />
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<div id="main" class="col-sm-12">
	<div id="wrapper"> 
     <div id="content"> 
     <div class="row col-md-4"></div>
     <div class="row col-md-4">
      <h1>Search Result</h1>
          	
         <form action="/getFrontResult" method="POST">
          	
          <div class="form-group">
			    <label for="votingCode">Voting Code:</label>
			    <select class="form-control" name = "votingCode">
			    	<option value="">--- Select One ---</option>
			    	<c:forEach items="${vt }" var = "v">
			    		<option value="${v.code }">${v.code }</option>
			    	</c:forEach>
			     </select>
			</div>
			
			
			 <center><button type="submit" class="btn btn-info">Search</button></center>
          </form>  
          	</div>
	       <div class="row col-md-4"></div>
	</div>
  </div>
</div> 

<jsp:include page="/WEB-INF/view/common/footer.jsp"/>