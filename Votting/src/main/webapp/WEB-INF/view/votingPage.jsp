<jsp:include page="/WEB-INF/view/common/header2.jsp" />
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<div id="main" class="col-sm-12">

  <div id="wrapper"> 
     <div id="content"> 
   <h1>Click on the Symbol to complete voting.</h1>
   <table class="table table-border table-hover center">
   <thead>
		<tr>
			<th>ID</th>
			<th>Voting Code</th>
			<th>Name</th>
			<th>Post</th>
			<th>Area</th>
			<th>Party Name</th>
			<th>Symbol</th>
			
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${candidate}" var="c">
		<tr>
			<td>${c.id}</td>
			<td>${c.votingCode}</td>
			<td>${c.name}</td>
			<td>${c.post}</td>
			<td>${c.area}</td>
			<td>${c.partyName}</td>
			<td>
			<a href="/vote/${c.id }/${nid}" class="btn btn-info"><img style="height: 50px; width: 50px" src="${c.symbol}" alt="symbol"></a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
	</table>

	</div>
  </div>
</div> 
<jsp:include page="/WEB-INF/view/common/footer.jsp"/>