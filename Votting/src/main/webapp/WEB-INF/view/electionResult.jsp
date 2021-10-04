<jsp:include page="/WEB-INF/view/common/header2.jsp" />
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<div id="main" class="col-sm-12">

  <div id="wrapper"> 
     <div id="content">  
   		  <div class="col-md-2"></div>
   		  <div class="col-md-8 bg-primary">
   		   <table class="table table-border table-hover;">
   		   		<thead>
   		   			<tr>
   		   			<th>Candidate Name</th>
   		   			<th>Symbol</th>
   		   			<th>Total Vote</th>
   		   			<th>Percentage</th>
   		   			</tr>
   		   		</thead>
   		   		<tbody>
   		   		<c:forEach  items="${result}" var="r">
   		   		<tr>
   		   			<td>${r.candidateName }</td>
   		   			<td><img src="${r.symbol }" alt="symbol" style="height: 50px; width: 50px"></td>
   		   			<td>${r.totalVote }</td>
   		   			<td>${r.percentage }%</td>
   		   			
   		   		</tr>
   		   		</c:forEach>
   		   		</tbody>
   		   </table>
   		   <center><h1>Sujan is <b style = "color: green">Winner</b>. Congratulations!!</h1></center>
   		  </div>
   		  <div class="col-md-2"></div>
	</div>
  </div>
</div> 

<jsp:include page="/WEB-INF/view/common/footer.jsp"/>