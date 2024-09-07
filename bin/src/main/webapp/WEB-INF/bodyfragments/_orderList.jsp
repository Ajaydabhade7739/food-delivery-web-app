<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page isELIgnored="false"%>

<c:url var="addUrl" value="/ctl/ordder" />

<c:url var="addSearch" value="/ctl/order/search" />

<c:url var="editUrl" value="/ctl/order?id=" />


<div class="container">
	<br>
	<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Orders</li>
		</ol>
	</nav>
	<br>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/ctl/order/search"
		modelAttribute="form">
		<div class="card">
			<h5 class="card-header"
				style="background-color: #18334f; color: white;">Order</h5>
			<div class="card-body">
				<div class="row g-3">
					<s:bind path="orderId">
						<div class="col">
							<sf:input path="${status.expression}" class="form-control"
								placeholder="Search By Order Id" />
						</div>
					</s:bind>
					<div class="col">
						<input type="submit" class="btn btn-primary btn btn-info"
							name="operation" value="Search">or<input type="submit"
							class="btn btn-primary btn btn-info" name="operation"
							value="Reset">
					</div>
				</div>
				<b><%@ include file="businessMessage.jsp"%></b>
				<br>


				<sf:input type="hidden" path="pageNo" />
				<sf:input type="hidden" path="pageSize" />

				<sf:input type="hidden" path="listsize" />
				<sf:input type="hidden" path="total" />
				<sf:input type="hidden" path="pagenosize" />

				<table class="table table-bordered border-primary">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Order Id</th>
							<th scope="col">Name</th>
							<th scope="col">Product</th>
							<th scope="col">Quantity</th>
							<th scope="col">Price</th>
							<th scope="col">Total</th>
							<th scope="col">Address</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="ord" varStatus="orders">
							<tr>
								
								<td scope="row">${orders.index+1}</td>
								<td scope="row">${ord.orderid}</td>
								<td scope="row">${ord.name}</td>
								<td scope="row">${ord.product.name}</td>
								<td scope="row">${ord.quantity}</td>
								<td scope="row">${ord.product.price}</td>
								<td scope="row">${ord.total}</td>
								<td scope="row">${ord.address1}</td>
								
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="clearfix"></div>
				<ul class="pagination pull-right">
					<li><input type="submit" name="operation"
						class="btn  btn-primary btn-sm"
						<c:if test="${form.pageNo == 1}">disabled="disabled"</c:if>
						value="Previous"></li>

					<li><input type="submit" name="operation"
						class="btn  btn-primary btn-sm"
						<c:if test="${total == pagenosize  || listsize < pageSize   }">disabled="disabled"</c:if>
						value="Next"></li>
				</ul>
			</div>

		</div>
	</sf:form>
</div>