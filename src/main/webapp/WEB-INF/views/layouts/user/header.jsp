<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<header id="header">
	<div class="row">
		<div class="span4">
			<h1>
				<a class="logo" href="<c:url value="/trang-chu" />"><span>Twitter
						Bootstrap ecommerce template</span> <img
					src="<c:url value="/assets/user/img/logo-bootstrap-shoping-cart.png" />"
					alt="bootstrap sexy shop"> </a>
			</h1>
		</div>

		<div class="span4 alignR" style="float: right">
			<p>
				<br> <strong> Support (24/7) : 0800 1234 678 </strong><br>
				<br>
			</p>
			<a href="<c:url value="/gio-hang" />"> <span class="btn btn-mini">[
					${ TotalQuantyCart } ] <span class="icon-shopping-cart"></span>
			</span>
			</a> <span class="btn btn-warn4ing btn-mini">đ</span> <span
				class="btn btn-mini">&pound;</span> <span class="btn btn-mini">&euro;</span>
		</div>
	</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<a data-target=".nav-collapse" data-toggle="collapse"
				class="btn btn-navbar"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a>
			<div class="nav-collapse">
				<c:set var="currentPage"
					value="${fn:substring(pageContext.request.servletPath, 1, -1)}" />
				<ul class="nav">
					<c:forEach items="${menus}" var="item">
						<li ${item.url == "/".concat(currentPage) ? 'class="active"' : ''}><a
							href="<c:url value="${ item.url }" />"> ${item.name} </a></li>
					</c:forEach>
				</ul>

				<%-- <ul class="nav">
							<c:forEach var="item" items="${ menus }" varStatus="index">
									<c:if test="${ index.first }">
										<li class="active">
									</c:if>
									<c:if test="${ not index.first }">
										<li class="">
									</c:if>
										<a href="<c:url value="${ item.url }" />">${ item.name } </a>
									</li>
							</c:forEach>
						</ul> --%>
				<form action="#" class="navbar-search pull-left">
					<input type="text" placeholder="Search" class="search-query span2">
				</form>
				<ul class="nav pull-right">
					<c:if test="${ empty LoginInfo }">
						<li class="dropdown"><a class="dropdown-toggle"
							href="/DiamondShop/dang-nhap"><span class="icon-lock"></span>
								Đăng nhập </a> 
								<!-- 							<div class="dropdown-menu"> --> <%-- 								<form:form action="dang-nhap" method="POST" modelAttribute="users" class="form-horizontal loginFrm"> --%>
							<!-- 									<div class="control-group"> --> <!-- 										<input type="text" class="span2" id="user" placeholder="Email" /> -->
							<!-- 									</div> --> <!-- 									<div class="control-group"> -->
							<!-- 										<input type="password" class="span2" id="password" -->
							<!--  										placeholder="Password"/> -->
							 <!-- 									</div> -->
							<!-- 									<div class="control-group"> --> 
							<!-- 										<label class="checkbox"> <input type="checkbox"> -->
							<!-- 											Remember me --> <!-- 										</label> --> <!-- 										<button type="submit" class="shopBtn btn-block">Sign in</button> -->
							<!-- 									</div> --> <%-- 								</form:form> --%> <!-- 							</div> -->
						</li>
					</c:if>
					<c:if test="${ not empty LoginInfo }">
						<li><a href="/DiamondShop/quan-ly-tai-khoan">${ LoginInfo.display_name }</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
			var search = search-query.value;
			const search-query = document.querySelector("#search-query");
		</script>