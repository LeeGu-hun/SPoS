<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${selProd eq null}">
	<c:forEach items="${prodList }" var="prod">
		<option value="${prod.pet_info_index }">${prod.pet_kind }</option>
		<script>priceArr.push([${prod.pet_info_index },${prod.list_price }]);</script>
	</c:forEach>
</c:if>

<c:if test="${selProd ne null}">
	<c:if test="${selProd ne 'all'}">
		<c:forEach items="${prodList }" var="prod">
			<option value="${prod.pet_info_index }"
				${selProd eq prod.pet_info_index?' selected':''}>${prod.pet_kind}</option>

		</c:forEach>
	</c:if>
	<c:if test="${selProd eq 'all'}">
		<c:forEach items="${prodList }" var="prod">
			<option value="${prod.pet_info_index }">${prod.pet_kind }</option>
		</c:forEach>
	</c:if>
</c:if>