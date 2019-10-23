<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 등록 페이지</title>
<%@ include file="../include/header.jsp" %>
<script>


	$(document).ready(function(){
		$("#addBtn").click(function(){
			var prodRegdate = $("#prodRegdate").val();
			var prodCate = $("#prodCate").val();
			var detailCate = $("#detailCate").val();
			var prodName = $("#prodName").val();
			var prodPrice = $("#prodPrice").val();
			var prodKcal = $("#prodKcal").val();
			var prodManufact = $("#prodManufact").val();
			var prodDesc = $("#prodDesc").val();
			var prodPhoto = $("#prodPhoto").val();
			
			if(prodRegdate==""){
				alert("날짜를 선택해주세요");
				prodRegdate.focus();
			}
			else if(prodCate==""){
				alert("카테고리를 선택해주세요");
				prodCate.focus();
			} else if(detailCate==""){
				alert("상세분류를 선택해주세요");
				detailCate.focus();
			} else if(prodName == "") {
				alert("상품명을 입력해주세요");
				prodName.foucs();
			} else if (prodPrice == "") {
				alert("상품 가격을 입력해주세요");
				prodPrice.focus();
			} else if (prodKcal == ""){
				alert("칼로리를 입력해주세요");
				prodKcal.focus();
			} else if (prodManufact == ""){
				alert("제조사를 입력해주세요");
				prodManufact.focus();
			} else if (prodDesc == "") {
				alert("상품 설명을 입력해주세요");
				prodDesc.focus();
			} else if (prodPhoto == "") {
				alert("상품 사진을 입력해주세요");
				prodPhoto.focus();
			}
			document.form1.action = "${path}/shop/product/insert.do";
			document.form1.submit();
		});
	});
	
</script>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
	<h2>상품 등록</h2>
	<form action="" id="form1" name="form1" enctype="multipart/form-data" method="post">
		<table border="1">
		
			<tr>
				<td>등록일</td>
				<td></td>
			
			</tr>
			<tr>
				<td>카테고리</td>
				<td><input type = ""  name="prodCate" id="prodCate" ></td>
			</tr>
			<tr>
				<td>상세분류</td>
				<td><input type = ""  name="detailCate" id="detailCate" ></td>
			</tr>
			<tr>
				<td>상품명</td>
				<td><input type="text" name="prodName" id="prodName"></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="text" name="prodPrice" id="prodPrice"></td>
			</tr>
			<tr>
				<td>칼로리</td>
				<td><input type="text" name="prodKcal" id="prodKcal"></td>
			</tr>
			<tr>
				<td>제조사</td>
				<td><input type="text" name="prodManufact" id="prodManufact"></td>
			</tr>
			<tr>
				<td>상품설명</td>
				<td><textarea rows="5" cols="60" name="prodDesc" id="prodDesc"></textarea></td>
			</tr>
			<tr>
				<td>상품이미지</td>
				<td><input type="file" name="prodPhoto" id="prodPhoto"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="등록" id="addBtn">
					<input type="button" value="목록" onclick="location.href='${path}/shop/product/list.do';">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>