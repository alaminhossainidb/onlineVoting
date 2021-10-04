<jsp:include page="/WEB-INF/view/common/adminHeader.jsp" />
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<div id="main" class="col-sm-12">
	<div id="wrapper"> 
     <div id="content">  
     <div class="row col-md-2"></div>
      <div class="row col-md-8">
         <form action="/saveCandidate" method="POST" enctype="multipart/form-data">
          	<h1>Add Candidate</h1>
          
          	<div class="form-group">
			    <label for="name">Name:</label>
			    <input type="text" class="form-control" name="name">
			</div>
			
			<div class="form-group">
			    <label for="partyName">Party Name:</label>
			    <select id="symbol" class="form-control" name = "symbol">
			    		<option value="">--- Select One ---</option>
			    	<c:forEach items="${p }" var = "p">
			    		<option value="${p.partySymbol }">${p.partyName }</option>
			    	</c:forEach>
			    </select>
			</div>
			
			<div class="form-group">
			    <label for="area">Voting Area:</label>
			    <input type="text" class="form-control" name="area">
			</div>
			
			<div class="form-group">
			    <label for="post">Post:</label>
			    <select class="form-control" name = "post">
			    	<option value="">--- Select One ---</option>
			    	<option value="MP">MP</option>
			    	<option value="MAYOR">MAYOR</option>
			    	<option value="CHAIRMAN">CHAIRMAN</option>
			    	<option value="VICE-CHAIRMAN">VICE-CHAIRMAN</option>
			    	<option value="MEMBER">MEMBER</option>
			    </select>
			</div>
			
			<div class="form-group">
			    <label for="votingCode">Voting Code:</label>
			    <select class="form-control" name = "votingCode">
			    	<option value="">--- Select One ---</option>
			    	<c:forEach items="${vt }" var = "v">
			    		<option value="${v.code }">${v.code }</option>
			    	</c:forEach>
			    	
			    </select>
			</div>
			
			<div id="abc" class="form-group">
			    <label for="partyName">Symbol:</label>
			    <input type="text" class="form-control" id="partyName" name="partyName"> 
			</div>
			
			<div id="symbol2" class="form-group">
			    <label for="partyName">Symbol:</label>
			    <input type="file" class="form-control" name="symbol"> 
			</div>
			
			 <center><button type="submit" class="btn btn-info">Save</button></center>
          </form>  
  		</div>
	    <div class="row col-md-2"></div>
	</div>
  </div>
</div> 

<jsp:include page="/WEB-INF/view/common/footer.jsp"/>
<script>
	/* console.log("hello"); */
	$("#symbol2").hide();
	
	//console.log($("#symbol :selected").text());
	//$("#symbol").val($("#symbol :selected").text());
	$("#symbol").on("change", function(){
		$("#partyName").val($("#symbol :selected").text())});
	$("#abc").hide();
	
	$("#symbol").on("change", function(){
		if($("#symbol :selected").text() == "Satantra"){
			$("#symbol2").show();
		}else{
			$("#symbol2").hide();
		}
	});
	
	
		
	
</script>
