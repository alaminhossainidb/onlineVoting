<jsp:include page="/WEB-INF/view/common/header2.jsp" />
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<div id="main" class="col-sm-12">

  <div id="wrapper"> 
     <div id="content"> 
     <h1>Download Voting Receipt</h1>
     <div class="row">
     <div class="container">
     
    <div class="col-md-3"></div>
    
    <div id = "print" class="col-md-6">
     <div class="bg-info ">
      <div align="center">
     	<img alt="Logo EC" src="/assets/logo/ec.png" style="height: 20px; width: 20px">
     	<b>Bangladesh Election Commission</b>
     </div>
     
     <table align = "center">
     <tr>
     <td>NID :</td>
     <td>${c.voterNID}</td>
     </tr>
     
      <tr>
     <td>Candidate Name  :</td>
     <td>${c.candidateName}</td>
     </tr>
     
      <tr>
     <td>Vote Code :</td>
     <td>${c.votingCode}</td>
     </tr>
     
      <tr>
     <td>Party Name : </td>
     <td>${c.partyName}</td>
     </tr>
     
      <tr>
     <td> Post :</td>
     <td>${c.candidatePost}</td>
     </tr>
      <tr>
     <td> Area :</td>
     <td>${c.area}</td>
     </tr>
     
      <tr>
     <td> Symbol :</td>
     <td><img style="height: 30px; width: 30px" src = "${c.symbol}"></img></td>
     </tr>
     </table>
    
    <center> <h1>Thanks for your Valuable Vote.</h1></center>
     </div>
     </div>
      <div class="col-md-3"></div>
   
     
      </div>
    <center> <a class="btn btn-info" onclick = "printDiv()">Download</a></center>
     </div>
	</div>
  </div>
</div> 
<jsp:include page="/WEB-INF/view/common/footer.jsp"/>

<script>

function printDiv() 
{

  var divToPrint=document.getElementById('print');

  var newWin=window.open('','Print-Window');

  newWin.document.open();

  newWin.document.write('<html><body onload="window.print()">'+divToPrint.innerHTML+'</body></html>');

  newWin.document.close();

  setTimeout(function(){newWin.close();},10);

}
</script>