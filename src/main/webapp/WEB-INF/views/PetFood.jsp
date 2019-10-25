<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<div id="hoeapp-container" hoe-color-type="lpanel-bg7"
	hoe-lpanel-effect="shrink">
	<sec:authorize access="isAuthenticated()">
		<%@include file="/WEB-INF/views/include/leftMenu.jsp"%>
	</sec:authorize>
	<section id="main-content"
		<sec:authorize access="isAnonymous()">style="margin-left:10%;"</sec:authorize>>
		<div class="space-30"></div>
		<div class="container">

			<form action="/PetFood" method="post" name="frm" id="frm">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /> <input type="hidden" id="pageNum"
					name="pageNum" value="${pageMaker1.cri.pageNum}" /> <input
					type="hidden" id="amount" name="amount"
					value="${pageMaker1.cri.amount eq null?10:pageMaker1.cri.amount}" />
				<!-- Content Row -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">사료 조회</h6>
					</div>
					<div class="card-body">
						<div class="row" align="center">
							<span>날짜:<input class="borRadi cenWid" type="text"
								id="saleDateFrom" name="saleDateFrom" /> <b>~</b> <input
								class="borRadi cenWid" type="text" id="saleDateTo"
								name="saleDateTo" /></span>
								
								
								<span>사료:<select class="borRadi"
								name="foodIndex">
									<c:if test="${stand.foodIndex eq null}">
										<option value="all" selected>전체</option>
										<c:forEach items="${custList }" var="cust">
											<option value="${cust.food_info_index }">${cust.food_name }</option>
										</c:forEach>
									</c:if>
									<c:if test="${stand.foodIndex ne null}">
										<option value="all" ${stand.foodIndex eq 'all'?'selected':''}>전체</option>
										<c:forEach items="${custList }" var="cust">
											<c:if test="${stand.foodIndex ne 'all'}">
												<option value="${cust.food_info_index }"
													${stand.foodIndex eq cust.food_info_index?'selected':''}>${cust.food_name }</option>
											</c:if>
											<c:if test="${stand.foodIndex eq 'all'}">
												<option value="${cust.food_info_index }">${cust.food_name }</option>
											</c:if>
										</c:forEach>
									</c:if>
							</select></span> <span  > 분류:<select class="borRadi" name="selCate"
								id="selCate">
									<c:if test="${stand.selCate eq null}">
										<option value="all" selected>전체</option>
										<c:forEach items="${cateList }" var="cate">
											<option value="${cate.pet_sort }">${cate.pet_sort }</option>
										</c:forEach>
									</c:if>
									<c:if test="${stand.selCate ne null}">
										<option value="all" ${stand.selCate eq 'all'?'selected':''}>전체</option>
										<c:forEach items="${cateList }" var="cate">
											<c:if test="${stand.selCate ne 'all'}">
												<option value="${cate.pet_sort }"
													${stand.selCate eq cate.pet_sort?'selected':''}>${cate.pet_sort }</option>
											</c:if>
											<c:if test="${stand.selCate eq 'all'}">
												<option value="${cate.pet_sort }">${cate.pet_sort }</option>
											</c:if>
										</c:forEach>
									</c:if>
							</select></span> <span  >품종:<select class="borRadi" name="selProd"
								id="selProd">
							</select></span> <span style="margin-left: 20px;"><a href="#" class="btnRound"
								onclick="searchSale();">검색</a></span>
								<span style="margin-left: 100px;"><a class="collapse-item" href="/Enrollment">반려동물 정보</a></span>
						</div>
					</div>
				</div>
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">사료 정보</h6>
						<div class="card-body">
							<div class="table-responsive">
								<div id="dataTable_wrapper"
									style="overflow-y: auto; overflow-x: hidden;">
									<div class="row">
										<div class="col-sm-12">
											<input type="hidden" id="seq" value="0">
											<table class="table table-bordered dataTable" id="dataTable"
												width="100%" cellspacing="0" role="grid"
												aria-describedby="dataTable_info" style="width: 100%;">
												<thead id='saleHeader'>
															<tr role="row">
																<th>날짜</th>
																<th>사료명</th>
																<th>양</th>
																<th>칼로리</th>
															</tr>
												</thead>
												<tbody id="saleBody">
													<c:forEach items="${orderList }" var="order">
															<tr role="row" align="center">
																<td><fmt:formatDate value="${order.food_date }"
																		pattern="yyyy.MM.dd hh:mm:ss" /></td>
																<td>${order.food_name }</td>
																<td>${order.food_amount }</td>	
																<td>${order.food_kcal }</td>	
															</tr>
														</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
									<c:if test="${not empty stand.selCate }">
										<div class="row">
											<div class="col-sm-12 col-md-5">
												<div class="dataTables_info" id="dataTable_info"
													role="status" aria-live="polite"></div>
											</div>
											<div class="col-sm-12 col-md-7">
												<div class="dataTables_paginate paging_simple_numbers"
													id="dataTable_paginate">
													<ul class="pagination justify-content-end">
														<c:if test="${pageMaker1.prev}">
															<li class="paginate_button page-item previous disabled"
																id="dataTable_previous"><a
																href="${pageMaker1.startPage -1}"
																aria-controls="dataTable" data-dt-idx="0" tabindex="0"
																class="page-link">Previous</a></li>
														</c:if>

														<c:forEach var="num" begin="${pageMaker1.startPage}"
															end="${pageMaker1.endPage}">
															<li
																class='paginate_button page-item ${pageMaker1.cri.pageNum == num ? "active":""}'>
																<a href="${num}" aria-controls="dataTable"
																data-dt-idx="1" tabindex="0" class="page-link">${num}</a>
															</li>
														</c:forEach>

														<c:if test="${pageMaker1.next}">
															<li class="paginate_button page-item next"
																id="dataTable_next"><a
																href="${pageMaker1.endPage +1 }"
																aria-controls="dataTable" data-dt-idx="7" tabindex="0"
																class="page-link">Next</a></li>
														</c:if>
													</ul>
												</div>
											</div>
										</div>
									</c:if>
								</div>
							</div>
						</div>
					</div>
			</form>
		</div>
	</section>
</div>



<script>
	function isEmpty(str) {
		if (typeof str == "undefined" || str == null || str == "")
			return true;
		else
			return false;
	}
	function nvl(str, defaultStr) {
		if (typeof str == "undefined" || str == null || str == "")
			str = defaultStr;
		return str;
	}
	function getDate() {
		var newDate = new Date();
		var yyyy = newDate.getFullYear();
		var mm = newDate.getMonth() + 1;
		if (mm < 10)
			mm = "0" + mm;
		var dd = newDate.getDate();
		if (dd < 10)
			dd = "0" + dd;
		var toDay = yyyy + "-" + mm + "-" + dd;
		<c:if test="${Criteria.saleDateFrom eq null}">
		document.getElementById("saleDateFrom").value = toDay;
		document.getElementById("saleDateTo").value = toDay;
		console.log(toDay)
		</c:if>
		
		<c:if test="${Criteria.saleDateFrom ne null}">
		document.getElementById("saleDateFrom").value = '<fmt:formatDate value="${Criteria.saleDateFrom}" pattern="yyyy-MM-dd"/>';
		document.getElementById("saleDateTo").value = '<fmt:formatDate value="${Criteria.saleDateTo}" pattern="yyyy-MM-dd"/>';
		</c:if>
	}
	function prodWithCate() {
		var pet_sort = $("#selCate option:selected").val();
		priceArr = new Array();
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
		$.ajax({
			url : '/sale/getProdListWithCateByReport',
			beforeSend : function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			data : "pet_sort=" + pet_sort
					+ "&selProd=<c:out value='${Criteria.selProd}'/>",
			type : 'POST',
			dataType : 'html',
			success : function(result) {
				if ("<c:out value='${Criteria.selProd}'/>" == "undefined"
						|| "<c:out value='${Criteria.selProd}'/>" == "all")
					var tmp = "<option value='all' selected>전체</option>";
				else
					var tmp = "<option value='all'>전체</option>";
				$("#selProd").html(tmp + result);
			}
		}); //$.ajax
	}
	function searchSale() {
		$("#pageNum").val(1);
		$("#frm").submit();
	}
	$(document).ready(
			function() {
				history.replaceState({}, null, null);
				$("#selCate").on("change", function(e) {
					var selCate = $("#selCate option:selected").val();
					prodWithCate(selCate);
				}); //selCate
				$(".paginate_button a").on("click", function(e) {
					e.preventDefault();
					//console.log('click');
					$("#pageNum").val($(this).attr("href"));
					$("#frm").submit();
				});
				$("#saleDateFrom")
						.datepicker(
								{
									dateFormat : 'yy-mm-dd',
									prevText : '이전 달',
									nextText : '다음 달',
									monthNames : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									monthNamesShort : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									dayNames : [ '일', '월', '화', '수', '목', '금',
											'토' ],
									dayNamesShort : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									dayNamesMin : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									showMonthAfterYear : true,
									yearSuffix : '년'
								});
				$("#saleDateTo")
						.datepicker(
								{
									dateFormat : 'yy-mm-dd',
									prevText : '이전 달',
									nextText : '다음 달',
									monthNames : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									monthNamesShort : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									dayNames : [ '일', '월', '화', '수', '목', '금',
											'토' ],
									dayNamesShort : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									dayNamesMin : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									showMonthAfterYear : true,
									yearSuffix : '년'
								});
				getDate();
				prodWithCate();
			})
</script>
<%@include file="/WEB-INF/views/include/footer.jsp"%>
