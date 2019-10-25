<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:forEach items="${custList }" var="prod">
<option value="${cust.food_info_index}">${cust.food_name}</option>
<script>custArr.push([${cust.food_info_index},${cust.food_name}]);</script>
</c:forEach>
