<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<div class="container">
	<br>
	<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<c:url value="/welcome"/>">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Category</li>
		</ol>
	</nav>
	<br>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/ctl/category"
		modelAttribute="form" enctype="multipart/form-data" >
		<div class="card">
			<h5 class="card-header"
				style="background-color:black; color:white;">Category</h5>
			<div class="card-body">
				<b><%@ include file="businessMessage.jsp"%></b>

				<div class="col-md-6">
					<s:bind path="name">
						<label for="inputEmail4" class="form-label">Name</label>
						<sf:input path="${status.expression}"
							placeholder="Enter Name" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>
				<div class="col-md-6">
					<s:bind path="description">
						<label for="inputEmail4" class="form-label">Description</label>
						<sf:textarea path="${status.expression}"
							placeholder="Enter Last Name" rows="4" cols="4" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>
				
				<div class="col-md-6">
					<s:bind path="image">
						<label for="inputEmail4" class="form-label">Image</label>
						<sf:input type="file" path="${status.expression}"
							placeholder="Enter Image" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>

				<br>
				<div class="col-12">
					<input type="submit" name="operation"
						class="btn btn-primary pull-right" value="Save"> or <input
						type="submit" name="operation" class="btn btn-primary pull-right"
						value="Reset">
				</div>
			</div>
		</div>
	</sf:form>
</div>