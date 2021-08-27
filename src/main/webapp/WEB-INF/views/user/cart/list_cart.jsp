<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>   
<head>
<title>Giỏ hàng</title>
</head>
<body>
<div class="row">
	<div class="span12">
    <ul class="breadcrumb">
		<li><a href="<c:url value="trang-chu"/>">Trang chủ</a> <span class="divider">/</span></li>
		<li class="active">Giỏ hàng</li>
    </ul>
	<div class="well well-small">
		<h2>Giỏ hàng <small class="pull-right"> ${ TotalQuantyCart } Sản phẩm trong giỏ hàng </small></h2>
	<hr class="soften"/>	

	<table class="table table-bordered table-condensed">
              <thead>
                <tr>
                  <th>Hình ảnh</th>
                  <th>Mô tả</th>
                  <th>Màu sắc</th>
                  <th>Giá bán</th>
                  <th>Số lượng </th>
                  <th>Chỉnh sửa </th>
                  <th>Xóa </th>
                  <th>Tổng tiền</th>
				</tr>
              </thead>
              <tbody>
              
				<c:forEach var="item" items="${ Cart }">
					<tr>
	                  
	                  <td><a href="<c:url value="/chi-tiet-san-pham/${ item.value.product.id_product }" />"><img width="100" src="<c:url value="/assets/user/img/${ item.value.product.img }"/>" alt=""></td>
	                  </a>
	                  <td>${ item.value.product.title }</td>
	                  <td><span class="shopBtn" style="background-color: ${ item.value.product.code_color }";"><span class="icon-ok"></span></span> </td>
	                  <td><fmt:formatNumber type="number" groupingUsed="true" value="${ item.value.product.price }"/> ₫</td>
	                  <td>
						<input type="number" min="0" max="1000" class="span1"  placeholder="1" id="quanty-cart-${ item.key }" size="16" type="text" value="${ item.value.quanty }">
					  </td>
	                  <td>
	                  	<buttton data-a="${ item.key }" class="btn btn-mini btn-danger edit-cart" type="button" >
	                  		<i class="icon-edit"></i>
	                  	</buttton>
	                  </td>
	                  <td>
	                  	<a href="<c:url value="/DeleteCart/${ item.key }"/>" class="btn btn-mini btn-danger" type="button" >
	                  		<i class="icon-remove"></i>
	                  	</a>
	                  </td>
	                  <td><fmt:formatNumber type="number" groupingUsed="true" value="${ item.value.totalPrice }"/> ₫</td>
	                </tr>
				</c:forEach>
                
				</tbody>
            </table><br/>
			
	<a href="<c:url value="trang-chu" />"  class="shopBtn btn-large"><span class="icon-arrow-left"></span> Tiếp tục mua sắm </a>
	<c:if test="${ LoginInfo != null }">
		<a href="<c:url value="/checkout" />" class="shopBtn btn-large pull-right">Thanh toán <span class="icon-arrow-right"></span></a>
	</c:if>
	<c:if test="${ LoginInfo == null }">
		<a href="<c:url value="/dang-nhap" />" class="shopBtn btn-large pull-right">Thanh toán <span class="icon-arrow-right"></span></a>
	</c:if>

</div>
</div>
</div>

<content tag="script">
	<script>
	$(".edit-cart").on("click", function() {
		var id=$(this).data("a");
		var quanty = $("#quanty-cart-"+id).val();
		window.location = "EditCart/"+id+"/"+quanty;
	});
</script>
</content>

</body>