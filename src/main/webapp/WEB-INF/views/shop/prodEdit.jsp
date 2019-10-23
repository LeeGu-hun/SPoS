<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 상세/삭제</title>
<%@ include file="../include/header.jsp" %>
<script>

	$(document).ready(function(){
		$("#editBtn").click(function(){
			var prodUpdate = $("#prodUpdate").val();
			var prodCate = $("#prodCate").val();
			var detailCate = $("#detailCate").val();
			var prodName = $("#prodName").val();
			var prodPrice = $("#prodPrice").val();
			var prodManufact = $("prodManufact").val();
			var prodKcal = $("prodKcal").val();
			var prodDesc = $("#prodDesc").val();
			var prodPhoto = $("#prodPhoto").val();
			
			
			if(prodUpdate == ""){
				alert("날짜를 선택해주세요");
				prodRegdate.focus();
			} else if(prodCate == ""){
				alert("카테고리를 선택해주세요");
				prodCate.focus();
			} else if(detailCate == ""){
				alert("상세분류를 선택해주세요");
				detailCate.focus();
			} else if(prodName == "") {
				alert("상품명을 입력해주세요");
				prodName.foucs();
			} else if (prodPrice == "") {
				alert("상품 가격을 입력해주세요");
				prodPrice.focus();
			} else if (prodManufact == "") {
				alert("제조사를 입력해주세요");
				prodManufact.focus();
			} else if (prodKcal == "") {
				alert("칼로리를 입력해주세요");
				prodKcal.focus();
			} else if (prodDesc == "") {
				alert("상품 설명을 입력해주세요");
				prodDesc.focus();
			} else if (category1 == "") {
				alert("카테고리를 선택해주세요");
				category1.focus();
			} else if (category2 == "") {
				alert("카테고리를 입력해주세요");
				category2.focus();
			} 
			
			
			
			
			
			/* else if (prodPhoto == "") {
				alert("상품 사진을 입력해주세요");
				prodPhoto.focus();
			} */
			document.form1.action = "${path}/shop/product/update.do";
			document.form1.submit();
		});
		$("#deleteBtn").click(function(){
			if(confirm("상품을 삭제하시겠습니까?")){
				document.form1.action = "${path}/shop/product/delete.do";
				document.form1.submit();
			}
		});
		$("#listBtn").click(function(){
			location.href = "${path}/shop/report";	
		});
	});
</script>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
	<h2>상품 정보/삭제</h2>
	<form action="" id="form1" name="form1" enctype="multipart/form-data" method="post">
		<table border="">
			<tr>
				<td>상품 이미지</td>
				<td>
					<img src="${path}/images/${vo.prodUrl}" height="300px" width="310px">
					<br>
					<input type="file" id="prodPhoto" name="prodPhoto">
				</td>
			</tr>
			<tr>
				<td>수정일</td>
				<td></td>
			</tr>
			<tr>
				<td>카테고리</td>
					<select id="prodCateSelection" name="prodCateSelection">
						<option value="dogs">강아지</option>
						<option value="cats">고양이</option>
					</select>
				</td>
				<td>상세분류</td>
					<select id="detailCateSelection" name="detailCateSelection">
						<option value="foods">사료</option>
						<option value="toys">장난감</option>
						<option value="snacks">간식</option>
					</select>
			</tr>
				
			<tr>
				<td>상품명</td>
				<td><input type="text" id="prodName" name="prodName" value="${vo.prodName}"></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="number" id="prodPrice" name="prodPrice" value="${vo.prodPrice}"></td>
			</tr>
			<tr>
				<td>제조사</td>
				<td><input type="text" id="prodManufact" name="prodManufact" value="${vo.prodManufact}"></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="number" id="prodKcal" name="prodKcal" value="${vo.prodKcal}"></td>
			</tr>
			<tr>
				<td>상품소개</td>
				<td><textarea id="prodDesc" name="prodDesc" rows="5" cols="60">${vo.prodDesc}</textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="hidden" name="prodId" value="${vo.prodId}">
					<input type="button" id="editBtn" value="수정">
					<input type="button" id="deleteBtn"value="삭제">
					<input type="button" id="listBtn" value="상품목록">	
				</td>	
			</tr>
		</table>
	</form>
</body>
</html>