<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<!-- http://wiki.sitemesh.org/wiki/display/sitemesh/Building+Decorators -->
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title><decorator:title default="Master-layout" /></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	
 	<link href="<c:url value="/assets/user/css/bootstrap_styleb.css"/>"
		rel="stylesheet" />  
		
  	<link rel="stylesheet" href="<c:url value="/assets/user/css/stylea.css" />">

	<link
		href="<c:url value="/assets/user/font-awesome/css/font-awesome.css" />"
		rel="stylesheet">
	
	<link rel="shortcut icon"
		href="<c:url value="/assets/user/img/nhan14.png" />">
	
	<decorator:head />
</head>
<body>
	<!-- 
	Upper Header Section 
-->
	<div class="navbar navbar-inverse navbar-fixed-top" >
		<div class="topNav">
			<div class="container">
				<div class="alignR">
					<div class="pull-left socialNw">
						<a href="#"><span class="icon-twitter"></span></a> <a href="#"><span
							class="icon-facebook"></span></a> <a href="#"><span
							class="icon-youtube"></span></a> <a href="#"><span
							class="icon-tumblr"></span></a>
					</div>
					<a class="active" id="active" href="<c:url value="/trang-chu" />"> <span class="icon-home"></span>
						Trang chủ</a>
					
					<%-- <a href="<c:url value="/dang-ky" />"><span class="icon-edit"></span> Đăng ký </a>
					<a href="<c:url value="/dang-nhap" />"><span class="icon-edit"></span> Đăng nhập </a> --%>
					<c:if test="${ not empty LoginInfo }">
						<a href="<c:url value="/quan-ly-tai-khoan" />" class="itemmenu"><span class="icon-user" ></span> ${ LoginInfo.display_name }</a> 
						<a href="<c:url value="/dang-xuat" />" class="itemmenu"><span class="icon-edit" ></span> Đăng xuất </a>
					</c:if>
					<c:if test="${ empty LoginInfo }">
						 <div class="itemmenu" href="#" id="taikhoan">
						    <span class="icon-user"></span>&nbsp;Tài khoản
						    <ul id="a">
						        <li><a href="<c:url value="/dang-ky" />"><span  ></span> Đăng ký </a></li>
						        <li><a href="<c:url value="/dang-nhap" />"><span  ></span> Đăng nhập </a></li>
						    </ul>
						</div> 
					</c:if>
					<a href="<c:url value="/lien-he"/>" class="itemmenu"><span class="icon-envelope" ></span> Liên hệ</a> 
					<a href="<c:url value="/gio-hang" />" class="itemmenu"><span class="icon-shopping-cart" class="sanpham" ></span> ${ TotalQuantyCart } Sản phẩm - <span
						class="badge badge-warning"><fmt:formatNumber type="number" groupingUsed="true" value="${ TotalPriceCart }"/> ₫ </span></a>
				</div>
			</div>
		</div>
	</div>

	<!--
Lower Header Section 
-->
	<div class="container">
		<div id="gototop"></div>
		<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>
		<decorator:body />

		<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>
		<!-- /container -->


		<div class="copyright">
			<div class="container">
				<p class="pull-right">
					<a href="#"><img
						src="<c:url value="/assets/user/img/maestro.png" />" alt="payment"></a>
					<a href="#"><img
						src="<c:url value="/assets/user/img/mc.png" />" alt="payment"></a>
					<a href="#"><img
						src="<c:url value="/assets/user/img/pp.png" />" alt="payment"></a>
					<a href="#"><img
						src="<c:url value="/assets/user/img/visa.png" />" alt="payment"></a>
					<a href="#"><img
						src="<c:url value="/assets/user/img/disc.png" />" alt="payment"></a>
				</p>
				<span>Copyright &copy; 2013<br> bootstrap ecommerce
					shopping template
				</span>
			</div>
		</div>
		<a href="#gototop" id="hello" class="gotop"><i class="icon-double-angle-up"></i></a>
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="<c:url value="/assets/user/js/jquery.js" />"></script>
		<script src="<c:url value="/assets/user/js/bootstrap.min.js" />"></script>
		<script src="<c:url value="/assets/user/js/jquery.easing-1.3.min.js" />"></script>
		<script src="<c:url value="/assets/user/js/jquery.scrollTo-1.4.3.1-min.js" />"></script>
		<script src="<c:url value="/assets/user/js/shop.js" />"></script>
		
		<decorator:getProperty property="page.script"></decorator:getProperty>
		
		<script>
			
			var listItem = document.getElementsByClassName("itemmenu");
		
			
			for (var i = 0; i < listItem.length; i++) {
				listItem[i].onmouseover = function() {
					document.getElementById("active").style.background = "none";
					document.getElementById("active").style.color = "#333";
				}
				listItem[i].onmouseout = function() {
					document.getElementById("active").style.background = "#f89406";
					document.getElementById("active").style.color = "#fff";
				}
			}
			
			var itemTaiKhoan = document.getElementById("taikhoan");
			
			itemTaiKhoan.addEventListener("mouseover",function(){
				document.getElementById("active").style.background = "none";
				document.getElementById("active").style.color = "#333";
				document.getElementById("a").style.display = "block";
			});
			
			itemTaiKhoan.onmouseout = function(){
				document.getElementById("active").style.background = "#f89406";
				document.getElementById("active").style.color = "#fff";
				document.getElementById("a").style.display = "none";
				return true;
			} 
			
		
			/*  
				 document.getElementById("item").style.background = "#f89406";
			  document.getElementById("item").style.color= "#fff"; 
		 	  document.getElementById("item").style.background = "none";
		 	  document.getElementById("item").style.color= "#333";
			 } */
			 
			 
			// Smooth Scrolling
			 document.getElementById("hello").addEventListener("click", function() {
				console.log("heele");
			  if (this.hash !== '') {
			    event.preventDefault();
			
			    const hash = this.hash;
			
			    $('html, body').animate(
			      {
			        scrollTop: $(hash).offset().top-2000
			      },
			      800
			    );
			  }
			}); 
			

		</script>
		
</body>
</html>
