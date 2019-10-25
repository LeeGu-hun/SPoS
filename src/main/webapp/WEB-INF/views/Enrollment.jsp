<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
var priceArr = new Array();
</script>
<style>
	a {text-decoration: none;}
	.card-body span { margin-right: 30px;}
	#selProd { width: 150px;}
	.txtSty { width: 80px; text-align: right;}
	#saleGrid{ width:100%;border: 1px solid #999;border-collapse: collapse;}
	#saleGrid th{ border: 1px solid #999;border-collapse: collapse;}
	#saleGrid td{ border: 1px solid #999;border-collapse: collapse;}
	.btnRound {
		margin: 0px;display: inline-block;	line-height: 27px;
		width: 60px;height: 27px;text-align: center;
		text-decoration: none;background-color: #99CCFF;
		border: 1px solid #6B8FB2;border-radius: 5px;
		font-size: 12px;font-weight: bold;color: #2E3D4C;
	}
	.btnRound:hover {color: #fff;background-color: #3079f0;
		text-decoration: none;
	}
</style>
<!-- Page Heading -->

<div id="hoeapp-container" hoe-color-type="lpanel-bg7" hoe-lpanel-effect="shrink">
		<sec:authorize access="isAuthenticated()">
			<%@include file="/WEB-INF/views/include/leftMenu.jsp"%>
		</sec:authorize>
<section id="main-content" <sec:authorize access="isAnonymous()">style="margin-left:4%;"</sec:authorize>>
			<div class="space-30"></div>
			<div class="container">
<form action="/Enrollment" method="post" name="frm" id="frm">
<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}" />
<input type="hidden" name="${principal.user.user_id}" value="${principal.user.user_id}" />
<!-- Content Row -->
<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">Enrollment</h6>
	</div>
	<div class="card-body">
	<div class="row" align="center">
	<span>출생일: <input type="text" name="saleDate" id="saleDate"></span>
	<%-- <span>사료명: 
		<select name="foodIndex">
			<c:forEach items="${custList }" var="cust">
			<option value="${cust.food_info_index }">${cust.food_name }</option>
			</c:forEach>
		</select></span> --%>
	<span>분류: 	
		<select name="selCate" id="selCate"><c:forEach items="${cateList }" var="cate">
			<option value="${cate.pet_sort }">${cate.pet_sort }</option>
			</c:forEach>
		</select></span>
	<span>상품: 
		<select onchange="selProd" id="selProd">
		</select></span><span>이름:<input class="txtSty" type="text" 	name="name" id="name"></span>
		<a class="collapse-item" href="/PetFood">펫 사료 정보</a>
		</div>
		
		<div class="row" style="margin-top: 20px;" align="center">
		<span><a href="#" class="btnRound" name="btn1" onclick="addRow();">추가</a></span>
		<span><a href="#" class="btnRound" name="btn2" id="popbutton" onclick="saleConfirm();">등록</a>
		</span>
		
		</div>
	</div>
</div>

<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">펫 등록 확인</h6>
	</div>
	<div class="card-body">
	<input type="hidden" id="seq" value="0">
		<table id="saleGrid">
			<thead id='saleHeader'>
				<tr align="center">
					<th align="center">순번</th><th align="center">구분</th><th align="center">품명</th>
					<th align="center">이름</th><th align="center">삭제</th>
				</tr>
			</thead>
			<tbody id="saleBody">
			</tbody>
		</table>
	</div>
</div>
</form>

<script>
function getDate() {
	var newDate = new Date();
	var yyyy = newDate.getFullYear();
	var mm = newDate.getMonth() + 1;
	if (mm < 10) {
		mm = "0" + mm;
	}
	var dd = newDate.getDate();
	if (dd < 10) {
		dd = "0" + dd;
	}
	var toDay = yyyy + "-" + mm + "-" + dd;
	document.getElementById("saleDate").value = toDay;
}

	function removeHan(event){
		event = event ||window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if( keyID == 8 || keyID == 46 ||keyID == 37 || keyID == 39)
			return;
		else
			event.target.value = 
				event.target.value.replace(/[^0-9]/g,"");
	}
		
	function prodWithCate(pet_sort){
		priceArr = new Array();
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
		$.ajax({
			url : '/sale/getProdListWithCate',
			beforeSend : function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			data : "pet_sort=" + pet_sort,
			type : 'POST',
			dataType : 'html',
			success : function(result) {
				$("#selProd").html(result);
			},
		}); //$.ajax
	}

	function addRow() {
		var selProd = document.getElementById("selProd");
		var selProdVal = document.getElementById("selProd").options[selProd.selectedIndex].value;
		var seq = document.getElementById('seq');
		var selProdTxt = selProd.options[selProd.selectedIndex].text;//안써도됨
		var selProdVal = selProd.options[selProd.selectedIndex].value;//안써도됨
		seq.value = parseInt(seq.value) + 1;
		//totalAdd();
		saleBody = document.getElementById('saleBody');
		row = saleBody.insertRow(saleBody.rows.length);
		cell1 = row.insertCell(0);
		cell2 = row.insertCell(1);
		cell3 = row.insertCell(2);
		cell4 = row.insertCell(3);
		cell5 = row.insertCell(4);
		cell1.innerHTML = seq.value;
		cell2.innerHTML = document.getElementById("selCate").value;
		cell3.innerHTML = '<input type="hidden" name="pet_kind" value="'
				+ selProdVal + '" />' + selProdTxt;
		cell4.innerHTML = '<input type="text" class="txtSty" name="names" value="'
				+ document.getElementById("name").value + '" />';
		cell5.innerHTML = '<a href="#" class="btnRound" '
			+ 'onclick="removeRow(this.parentNode.parentNode)" >삭제</a>';

		
	}
	function saleConfirm(){
		$("#frm").submit();
	}
	 function removeRow(row, sum) {
		 var table = document.getElementById("saleBody");
			var seq = document.getElementById("seq");
			try {
				var temp = row.rowIndex -1;
				table.deleteRow(temp);
				if(temp == 0) seq.value= 0;
			} catch (ex) { 
				alert(ex);
			}
	        
	 }
	 
	$(document).ready(function() {
		var result = '<c:out value="${result}"/>';
		$("#selCate").on("change", function(e) {
			var selCate = $("#selCate option:selected").val();
			prodWithCate(selCate);
		});//selCate
		$("#selProd").on("change", function(e){

			});
		$("#saleDate").datepicker({
					dateFormat : 'yy-mm-dd',
					prevText : '이전 달',
					nextText : '다음 달',
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ],
					dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					showMonthAfterYear : true,
					yearSuffix : '년'
				});
		getDate();
		var selCate = $("#selCate option:selected").val();
		prodWithCate(selCate);
	});
</script>

<%@include file="/WEB-INF/views/include/footer.jsp" %>