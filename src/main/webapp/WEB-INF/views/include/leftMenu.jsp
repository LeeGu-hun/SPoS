<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<aside id="hoe-left-panel" hoe-position-type="absolute">
	<ul class="nav panel-list">
		<li class="hoe-has-menu opened">
			<a href="#">
				<i class="fa fa-cutlery" aria-hidden="true"></i>
				<span class="menu-text"> 오늘 먹은 사료량</span>
			</a>
			<ul class="hoe-sub-menu">
				<li class="hoe-sub-menu">
					<div id="sub-menu-text">
						<a href="#">
							<h5>[${food.food_amount } g]<br>
							    [${food.food_k } kcal]
							</h5>
						</a>
					</div>
				</li>
			</ul>
		</li>
		<li>
			<a href="/Enrollment">
				<i class="fa fa-paw" aria-hidden="true"></i>
				<span class="menu-text">반려동물 정보</span>
				<span class="selected"></span>
			</a>
		</li>
		<li>
			<a href="/PetFood">
				<i class="fa fa-info" aria-hidden="true"></i>
				<span class="menu-text">사료 정보</span>
				<span class="selected"></span>
			</a>
		</li>
		<li>
			<a href="#">
				<i class="fa fa-shopping-cart" aria-hidden="true"></i>
				<span class="menu-text">반려동물 용품 구입</span>
				<span class="selected"></span>
			</a>
		</li>
	</ul>
</aside>
<!--aside left menu end-->