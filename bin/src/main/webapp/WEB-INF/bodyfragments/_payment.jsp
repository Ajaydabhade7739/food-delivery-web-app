	<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
	<div class="container">
		<br>
		<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Payment</li>
			</ol>
		</nav>
		<br>

		<div class="accordion accordion-flush" id="accordionFlushExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
       <b>By Card</b>
      </button>
    </h2>
    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body"><div class="card">
			<h5 class="card-header"
				style="background-color: #18334f; color: white;">Payment</h5>
			<div class="card-body">
			
				<sf:form method="post"
					action="${pageContext.request.contextPath}/ctl/order"
							modelAttribute="form">
				


						
					<div class="col-md-12">
						<label for="inputEmail4" class="form-label">Card No</label>
						 <input type="text" name="cardNo" placeholder="Enter Card No" class="form-control" id="inputEmail4"
						 value="" required="required">
					</div>
					
					<div class="col-md-12">
						<label for="inputEmail4" class="form-label">Name</label>
						 <input type="text" name="name" placeholder="Enter Card Holder Name" class="form-control" id="inputEmail4"
						 value="" required="required">
					</div>
					
					<div class="col-md-6">
						<label for="inputEmail4" class="form-label">Month</label>
						 <input type="text" name="month" placeholder="Enter Month" class="form-control" id="inputEmail4"
						 value="" required="required">
					</div>
					
					<div class="col-md-6">
						<label for="inputEmail4" class="form-label">Year</label>
						 <input type="text" name="year" placeholder="Enter Year" class="form-control" id="inputEmail4"
						 value="" required="required">
					</div>
					
					<div class="col-md-12">
						<label for="inputEmail4" class="form-label">CVV</label>
						 <input type="text" name="cvv" placeholder="Enter CVV" class="form-control" id="inputEmail4"
						 value="" required="required">
					</div>
					<br>
					
					<div class="col-12">
						<input type="submit" name="operation"
									value="PlaceOrder"
									class="btn btn-primary btn btn-info" />
					</div>
				</sf:form>
			</div>
		</div></div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
        <b>By Check</b>
      </button>
    </h2>
    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body"><div class="card">
			<h5 class="card-header"
				style="background-color: #18334f; color: white;">Payment</h5>
			<div class="card-body">
			
				<sf:form method="post"
					action="${pageContext.request.contextPath}/ctl/order"
							modelAttribute="form">
				


						
					<div class="col-md-12">
						<label for="inputEmail4" class="form-label">Check No</label>
						 <input type="text" name="checkNo" placeholder="Enter Check No" class="form-control" id="inputEmail4"
						 value="" required="required">
					</div>
					
					<div class="col-md-12">
						<label for="inputEmail4" class="form-label">Name</label>
						 <input type="text" name="name1" placeholder="Enter Name" class="form-control" id="inputEmail4"
						 value="" required="required">
					</div>
					
					<div class="col-md-6">
						<label for="inputEmail4" class="form-label">Signature</label>
						 <input type="text" name="signature" placeholder="Enter Signature" class="form-control" id="inputEmail4"
						 value="" required="required">
					</div>
					
					<br>	
					<div class="col-12">
						<input type="submit" name="operation"
									value="PlaceOrder"
									class="btn btn-primary btn btn-info" />
					</div>
				</sf:form>
			</div>
		</div></div>
    </div>
  </div>
 
</div>
	</div>
</body>
</html>