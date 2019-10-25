<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:forEach items="${prodList }" var="prod">
<option value="${prod.pet_info_index }">${prod.pet_kind }</option>
</c:forEach>
