<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page isELIgnored="false"%>

<c:url var="addUrl" value="/ctl/category" />

<c:url var="addSearch" value="/ctl/category/search" />

<c:url var="editUrl" value="/ctl/category?id=" />


<div class="container">
	<br>
	<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Categories</li>
		</ol>
	</nav>
	<br>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/ctl/category/search"
		modelAttribute="form">
		<div class="card">
			<h5 class="card-header"
				style="background-color: #18334f; color: white;">Categories</h5>
			<div class="card-body">
				<div class="row g-3">
					<s:bind path="name">
						<div class="col">
							<sf:input path="${status.expression}" class="form-control"
								placeholder="Search By  Name" />
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
							<th scope="col"><input type="checkbox" id="selectall">Select
								All</th>
							<th scope="col">#</th>
							<th scope="col">Image</th>
							<th scope="col">Name</th>
							<th scope="col">Description</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="ct" varStatus="category">
							<tr>
								<td ><input type="checkbox" class="case"
									name="ids" value="${ct.id}"></td>
								<td scope="row">${category.index+1}</td>
									<td scope="row"><img height="100px" width="140px" src='<c:url value="/ctl/category/getImage/${ct.id}" />'></td>
								<td scope="row">${ct.name}</td>
								<td scope="row">${ct.description}</td>
								<td><a href="${editUrl} ${ct.id}"
									class="btn btn-primary btn btn-info">Edit</a></td>
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
					<li></li>
					<li><input type="submit" name="operation"
						class="btn  btn-primary btn-sm"
						<c:if test="${listsize == 0}">disabled="disabled"</c:if>
						value="Delete"></li>
					<li></li>

					<li><input type="submit" name="operation"
						class="btn  btn-primary btn-sm" value="New"></li>
					<li></li>


					<li><input type="submit" name="operation"
						class="btn  btn-primary btn-sm"
						<c:if test="${total == pagenosize  || listsize < pageSize   }">disabled="disabled"</c:if>
						value="Next"></li>
				</ul>
			</div>

		</div>
	</sf:form>
</div>