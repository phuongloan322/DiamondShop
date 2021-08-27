<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>
<style>
.product-content {
	overflow-x: hidden;
}
</style>
</head>
<body>
	<!-- 
Body Section 
-->

	<div class="row product-content">
		
		<div class="span13">
			<ul class="breadcrumb">
				<li><a href="<c:url value="/trang-chu" />">Trang chủ</a> <span class="divider">/</span></li>
				<li><a href="<c:url value="/san-pham/${ product.id_category }" />">Sản phẩm</a> <span class="divider">/</span></li>
				<li class="active">Chi tiết sản phẩm</li>
			</ul>
			<div class="well well-small">
				<div class="row-fluid">
					<div class="span5">
						<div id="myCarousel" class="carousel slide cntr">
							<div class="carousel-inner-b">
									
									<figure class="zoom" style="background:url(<c:url value="/assets/user/img/${ product.img }" />)" 
									onmousemove="zoom(event)" ontouchmove="zoom(event)">
									  <img  src="<c:url value="/assets/user/img/${ product.img }" />" >
									</figure>
							</div>
							
						</div>
					</div>
					<div class="span7 spanright">
						<h3>${ product.name}</h3>
						<hr class="soft" />

						<form class="form-horizontal qtyFrm" method="get"
							action="<c:url value="/AddCart/${ product.id_product }"/>">
							<div class="control-group">
								<label class="control-label"><span><fmt:formatNumber
											type="number" groupingUsed="true" value="${ product.price }" />₫</span></label>
								<div class="controls">
									<input type="number" min="0" value="0" class="span6">
								</div>
							</div>

							<div class="control-group">
								<label class="control-label"><span>Color</span></label>
								<div class="controls">
									<select class="span11">
										<option>Red</option>
										<option>Purple</option>
										<option>Pink</option>
										<option>Red</option>
									</select>
								</div>
							</div>
							<h4></h4>
							<p>${ product.title }
							<p>
								<a href="<c:url value="/AddCart/${ product.id_product }"/>" title="add to cart" class="shopBtn">
									<span class=" icon-shopping-cart"></span> Thêm giỏ hàng
								</a>
								<a href="<c:url value="/checkout"/>" title="mua ngay" class="shopBtn muangay">
									<span class=" icon-shopping-cart"></span> Mua ngay
								</a>
						</form>
						
					</div>
				</div>
				<hr class="softn clr" />


				<ul id="productDetail" class="nav nav-tabs">
					<li class="active"><a href="#home" data-toggle="tab">Chi
							tiết sản phẩm</a></li>
					<li class=""><a href="#profile" data-toggle="tab">Sản phẩm
							liên quan</a></li>

				</ul>
				<div id="myTabContent" class="tab-content tabWrapper">
					<div class="tab-pane fade active in" id="home">${ product.detail }
					</div>
					<div class="tab-pane fade" id="profile">


						<c:if test="${ productByIDCategory.size() > 0 }">

							<c:set var="countList" value="${ productByIDCategory.size() }" />
							<c:if test="${ productByIDCategory.size()  > 6}">
								<c:set var="countList" value="6" />
							</c:if>

							<c:forEach var="item" items="${ productByIDCategory }" begin="1"
								end="${ countList }" varStatus="loop">
								<div class="row-fluid">
									<div class="span2">
										<img src="<c:url value="/assets/user/img/${ item.img }" />"
											alt="">
									</div>
									<div class="span6" >
										<h5>${ item.name }</h5>
										<p>${ item.title }</p>
									</div>
									<div class="span4 alignR" >
										<form class="form-horizontal qtyFrm">
											<h3>
												<fmt:formatNumber type="number" groupingUsed="true"
													value="${ item.price }" />
												đ
											</h3>
											<br>
											<div class="btn-group">
												<a
													href="<c:url value="/AddCart/${ item.id_product }" />"
													class="defaultBtn"><span class=" icon-shopping-cart"></span>
													Add to cart</a> <a
													href="<c:url value="/chi-tiet-san-pham/${ item.id_product }" />"
													class="shopBtn">VIEW</a>
											</div>
										</form>
									</div>
								</div>
								<hr class="soft" />

							</c:forEach>
						</c:if>



					</div>
				</div>

			</div>
		</div>
	</div>
	

	<script>
	function zoom(event){
		  var zoomer = event.currentTarget;
		  x = event.offsetX/zoomer.offsetWidth*100;
		  y = event.offsetY/zoomer.offsetHeight*100;
		  zoomer.style.backgroundPosition = x + '% ' + y + '%';
		}
</script>
</body>
