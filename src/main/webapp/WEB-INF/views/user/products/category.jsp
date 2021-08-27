<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<head>
<title>Sản phẩm</title>
<style>
	.center {
	 /*  text-align: center; */
	}
	
	.pagination {
	 /*  display: inline-block; */
	 display: flex;
	 justify-content: center;
	}
	
	.pagination a {
	  color: black;
	  float: left;
	  padding: 8px 16px;
	  text-decoration: none;
	  transition: background-color .3s;
	  border: 1px solid #ddd;
	
	}
	
	.pagination a.active {
	  background-color: #4CAF50;
	  color: white;
	  border: 1px solid #4CAF50;
	}
	
	.pagination a:hover:not(.active) {background-color: #ddd;}
</style>
</head>
<body>
	<div class="well well-small">
	<div class="row">
		<span style="margin-left: 25px">Danh sách sản phẩm</span>
		<select class="full-right" style="float: right">
			<option>A - Z</option>
			<option>Cao - Thấp</option>
		</select>
	</div>
		<!-- <h3>Danh sách sản phẩm</h 3> -->
		
					<c:if test="${ productsPaginate.size() > 0 }">
						<div class="row-fluid">
						<ul class="thumbnails">
		
						<c:forEach var="item" items="${ productsPaginate }" varStatus="loop">
						<%-- <h1>${ productsPaginate }</h1> --%>
							<li class="span4">
								<div class="thumbnail">
									<a class="zoomTool" href="<c:url value="/chi-tiet-san-pham/${ item.id_product }" />" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
									
										<a href="<c:url value="/chi-tiet-san-pham/${ item.id_product }" />">
											
											<c:if test="${item.type != 'NULL'}">
 												
												<script src ="<c:url value="/assets/user/js/trang-chu.js" />"></script>
												<video width="300" height="300" poster="<c:url value="/assets/user/img/${ item.img }"/>" loop muted playsinline onmouseover="this.play()" onmouseout="this.pause(); this.load()" >
												  <source src="<c:url value="/assets/user/img/${ item.type }"/>" type="video/mp4">
												</video>
											</c:if>
											<c:if test="${item.type == 'NULL'}">
												
													<img src="<c:url value="/assets/user/img/${ item.img }" />">
											</c:if>
											
									<div class="caption cntr">
									
										<p>
											<strong>${ item.name }</strong>
											<p><fmt:formatNumber type="number" groupingUsed="true" value="${ item.price }" />đ</p>
										</p>
										<h4>
											<a class="shopBtn" href="<c:url value="/AddCart/${ item.id_product }"/>" title="add to cart"> Add to cart
											</a>
										</h4>
										<div class="actionList">
											<a class="pull-left" href="#">Add to Wish List </a> 
											<a class="pull-left" href="#"> Add to Compare </a>
										</div>
										<br class="clr">
									</div>
									</a>
								</div>
							</li>
							
							<c:if test="${ (loop.index + 1) % 3 == 0 || (loop.index + 1) == productsPaginate.size() }">
								</ul>
								</div>
								<c:if test="${ (loop.index + 1) < productsPaginate.size() }">
									<div class="row-fluid">
									<ul class="thumbnails">
								</c:if>
							</c:if>
							
						</c:forEach>
					</c:if>
		</div>
	
	</div>
		
	<div class="center">
	  <div class="pagination">
	  	<c:forEach begin ="1" end = "${ paginateInfo.totalPage }" varStatus="loop">
	  		<c:if test="${ (loop.index) == paginateInfo.currentPage }">
	  			<a href="<c:url value="/san-pham/${ idCategory }/${ loop.index }" />" class="active">${ loop.index }</a>
	  		</c:if>
	  		<c:if test="${ (loop.index) != paginateInfo.currentPage }">
	  			<a href="<c:url value="/san-pham/${ idCategory }/${ loop.index }" />">${ loop.index }</a>
	  		</c:if>
	  		<!--  <a href="#">&laquo;</a>
			  <a href="#">&raquo;</a> -->
	  	</c:forEach>
	  </div>
	</div>
	
</body>
