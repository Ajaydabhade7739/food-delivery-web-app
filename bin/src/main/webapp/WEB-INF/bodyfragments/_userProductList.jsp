<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page isELIgnored="false"%>


<c:url var="addSearch" value="/ctl/product/user/search" />


<div class="container">
	<br>
	<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Item List</li>
		</ol>
	</nav>
	<br>

	<div class="row">
		<div class="col-2">
			<ul class="list-group">
				<li class="list-group-item active" aria-current="true">Category</li>
				<c:forEach items="${catList}" var="ct" varStatus="catego">
				<li class="list-group-item"><a class="link-dark"
					href="?cid=${ct.id}">${ct.name}</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class="col-10">
			<div class="row row-cols-1 row-cols-md-5 g-4">

				<c:forEach items="${list}" var="pd" varStatus="product">
					<div class="col">
						<div class="card h-100">
							<img src="<c:url value="/ctl/product/getImage/${pd.id}" />" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">${pd.name}</h5>
								<p class="card-text">${pd.description}</p>
								<h6 class="card-title" style="color: orange;">${pd.price} Rs.</h6>
								<c:if test="${sessionScope.user !=null}">
									<a href="<c:url value="/ctl/cart?iId=${pd.id}" />"
										class="btn btn-primary btn btn-info">Add To Cart</a>
								</c:if>
								<c:if test="${sessionScope.user ==null}">
									<a href="<c:url value="/login?iId=${pd.id}" />"
										class="btn btn-primary btn btn-info">Add To Cart</a>
								</c:if>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
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