<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page isELIgnored="false"%>

<c:url var="addUrl" value="/ctl/cart" />

<c:url var="addSearch" value="/ctl/cart/search" />

<c:url var="editUrl" value="/ctl/cart?id=" />

<div class="container">
	<br>
	<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Cart</li>
		</ol>
	</nav>
	<br>
	<form action="${addSearch}" method="post">
		<div class="card">
			<h5 class="card-header"
				style="background-color: #18334f; color: white;">Cart</h5>
			<div class="card-body">
				<b><%@ include file="businessMessage.jsp"%></b>
				<br>
				<table class="table table-bordered border-primary">
					<thead>
						<tr>

							<th scope="col">#</th>
							<th scope="col">Image</th>
							<th scope="col">Name</th>
							<th scope="col">Price</th>
							<th scope="col">Quantity</th>
							<th scope="col">Total Price</th>
							<th scope="col">Update</th>
							<th scope="col">Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="totalp" value="${0}" />
						<c:forEach items="${list}" var="ct" varStatus="cart">
							<tr>
								<td scope="row">${cart.index+1}</td>
								<td scope="row"><img
									src="<c:url value="/ctl/product/getImage/${ct.product.id}" />"
									width="100px" height="100px"></td>
								<td scope="row">${ct.product.name}</td>
								<td scope="row">${ct.product.price}</td>
								<td scope="row"><input type="text"
									name="qunatity${cart.index+1}" class="form-control"
									value="${ct.quantity}"></td>
								<td scope="row">${ct.totalPrice}</td>
								<td><input type="submit" value="Update" name="operation"
									class="btn btn-primary btn btn-info"></td>
								<td><a href="<c:url value="/ctl/cart/search?cid=${ct.id}&operation=Delete"/>"
									class="btn btn-primary btn btn-info">Remove</a></td>
							</tr>
							<c:set var="totalp" value="${totalp + ct.totalPrice}" />
						</c:forEach>
						<tr>
							<td colspan="5">Total</td>
							<td colspan="3">${totalp}</td>
						</tr>

					</tbody>
				</table>
				<div class="row">
					<div class="col-11"></div>
					<div class="col-1">
						<input type="submit" value="Checkout" name="operation"
							class="btn  btn-info">
					</div>
				</div>
				<br>
				<div class="clearfix"></div>
				<ul class="pagination pull-right">
					<li><input type="submit" name="operation"
						class="btn  btn-primary btn-sm"
						<c:if test="${form.pageNo == 1}">disabled="disabled"</c:if>
						value="Previous"></li>
					<li></li>

					<li><input type="submit" name="operation"
						class="btn  btn-primary btn-sm"
						<c:if test="${total == pagenosize  || listsize < pageSize   }">disabled="disabled"</c:if>
						value="Next"></li>
				</ul>
			</div>
		</div>
	</form>
</div>

