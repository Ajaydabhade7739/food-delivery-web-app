
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<c:if test="${success != null}">
	<div  style="color: green;font-size: 12px;" role="alert">${success}</div>
</c:if>
<c:if test="${error != null}">
	<div style="color: red;font-size: 12px;" role="alert">${error}</div>
</c:if>