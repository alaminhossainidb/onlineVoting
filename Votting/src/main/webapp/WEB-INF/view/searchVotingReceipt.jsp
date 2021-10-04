<jsp:include page="/WEB-INF/view/common/header2.jsp" />

<div id="main" class="col-sm-12">

  <div id="wrapper"> 
     <div id="content">
     <div class="row col-md-4"></div>
     <div class="row col-md-4">   
          <form action="/searchVotingReceipt" method="POST">
          <h1>Search Voting Receipt</h1>
          
          <div class="form-group">
			    <label for="nid">Enter NID</label>
			    <input type="text" class="form-control" name="nid">
			</div>
          <center><button type="submit" class="btn btn-info">Search</button></center>
          </form> 
           <center><label style="color: red">${msg }</label>
          
           </div>
         <div class="row col-md-4"></div>     
	</div>
  </div>
</div> 
<jsp:include page="/WEB-INF/view/common/footer.jsp"/>