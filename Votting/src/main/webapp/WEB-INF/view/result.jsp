<jsp:include page="/WEB-INF/view/common/adminHeader.jsp" />
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<div id="main" class="col-sm-12">
	<div id="wrapper"> 
     <div id="content"> 
      <h1>Result</h1>
          <%--  --%>	
          <div class="col-md-10"></div>
          <div class="col-md-2">
          <h1 >Total Voters : <b style="color: red">${total }</b></h1>
          </div>
          <form action="/save" method="POST">
        <table align ="center" class="table table-border table-hover;">
	<thead>
		<tr>
			<th>SL</th>
			<th>Candidate Name</th>
			<th>Party Name</th>
			<th>Area</th>
			<th>Voting Code</th>
			<th>Symbol</th>
			<th>Total Vote</th>
			<th>Percentage</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${result}" var="v" varStatus="loop">
		<tr>
			<td>${loop.index+1}</td>
			<td>${v.candidateName}</td>
			<td>${v.partyName}</td>
			<td>${v.area}</td>
			<td>${v.votingCode}</td>
			<td><img style="height: 50px; width: 50px" src="${v.symbol }" alt="symbol"></td>
			<td>${v.candidateVote}</td>
			<td>
			<fmt:formatNumber var="formattedBillableTime" type="number" minFractionDigits="2" maxFractionDigits="2" value="${(v.candidateVote*100)/total}" />
		<%-- 	${(v.candidateVote*100)/52} --%>
			<c:set var="billableTime" value="${formattedBillableTime}"/>
			${billableTime}%
			
			<input type="hidden" name="candidateName[]" value="${v.candidateName}" />
			<input type="hidden" name="partyName[]" value="${v.partyName}" />
			<input type="hidden" name="symbol[]" value="${v.symbol}" />
			<input type="hidden" name="totalVote[]" value="${v.candidateVote}" />
			<input type="hidden" name="percentage[]" value="${billableTime}" />
			<input type="hidden" name="votingCode[]" value="${v.votingCode}" />
			
			</td>
			
		</tr>
	</c:forEach>
	</tbody>
	</table> 
	<center><input type="submit" class="btn btn-primary" value="Save"></center>
	</form> 
	       
	</div>
  </div>
</div> 

<jsp:include page="/WEB-INF/view/common/footer.jsp"/>