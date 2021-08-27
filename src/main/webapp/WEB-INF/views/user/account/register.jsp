<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta charset="UTF-8">
<title>Đăng ký tài khoản</title>
</head>
<body>

	<!-- 
Body Section 
-->
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Fashion</a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Watches</a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Fine Jewelry</a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Fashion Jewelry</a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Engagement & Wedding</a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Men's Jewelry</a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Vintage & Antique</a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Loose Diamonds </a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>Loose Beads</a></li>
					<li><a href="products.html"><span
							class="icon-chevron-right"></span>See All Jewelry & Watches</a></li>
					<li style="border: 0">&nbsp;</li>
					<li><a class="totalInCart" href="cart.html"><strong>Total
								Amount <span class="badge badge-warning pull-right"
								style="line-height: 18px;">$448.42</span>
						</strong></a></li>
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br> <br> <a
						class="defaultBtn" href="#">Click here </a>
				</p>
			</div>
			<div class="well well-small">
				<a href="#"><img src="assets/img/paypal.jpg"
					alt="payment method paypal"></a>
			</div>

			<a class="shopBtn btn-block" href="#">Upcoming products <br>
				<small>Click to view</small></a> <br> <br>
			<ul class="nav nav-list promowrapper">
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img src="assets/img/bootstrap-ecommerce-templates.png"
							alt="bootstrap ecommerce templates">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img src="assets/img/shopping-cart-template.png"
							alt="shopping cart template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img src="assets/img/bootstrap-template.png"
							alt="bootstrap template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
			</ul>

		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Người dùng</li>
			</ul>
			<h3>Người dùng</h3>

			<hr class="soft" />

			<div class="row">
				<div class="span4">
					<div class="well well-a">
						<h4>Đăng ký tài khoản</h4>
						<br />
						<form:form action="dang-ky" method="POST" modelAttribute="user">
							<div class="control-group">
								<label class="control-label" for="inputEmail">E-mail</label>
								<div class="controls">
									<form:input type="email" id="userName" class="span3"
										placeholder=" email" path="user" />
								</div>
							</div>

							<div class="error-text1 error-text">${ status }</div>

							<div class="control-group ">
								<label class="control-label" for="inputPassword">Mật
									khẩu</label>
								<div class="controls">
									<form:input class="span3" onkeyup="active()" id="password"
										type="password" placeholder="Mời nhập mật khẩu"
										path="password" />
								</div>
							</div>

							<div class="error-text2 error-text"></div>

							<div class="control-group">
								<label class="control-label" for="inputPassword">Nhập
									lại mật khẩu</label>
								<div class="controls">
									<input id="confirm_password" name="confirm_password"
										type="password" class="span3" placeholder="Nhập lại mật khẩu" />
								</div>
							</div>

							<div class="error-text3 error-text"></div>

							<div class="control-group">
								<label class="control-label" for="inputName">Họ và tên</label>
								<div class="controls">
									<form:input type="text" class="span3"
										placeholder="Mời nhập họ và tên" path="display_name" />
								</div>
							</div>
							<div class="error-text4 error-text"></div>
							<div class="control-group">
								<label class="control-label" for="inputAddress">Địa chỉ</label>
								<div class="controls">
									<form:input type="text" class="span3"
										placeholder="Mời nhập địa chỉ" path="address" />
								</div>
							</div>

							<div class="controls">
								<button type="submit" class="CreateAcc">Đăng ký thành
									viên</button>
							</div>
							
							<div class="controls center">
								<a href="<c:url value="dang-nhap"/>">Bạn đã có tài khoản?</a>
							</div>
						</form:form>

					</div>
				</div>
				<div class="span1">&nbsp;</div>

			</div>

		</div>
	</div>

	<script type="text/javascript">
		const password = document.querySelector("#password");
		const user = document.querySelector("#userName");
		const display_name = document.querySelector("#display_name");
		const confirm_password = document.querySelector("#confirm_password");
		const errorText1 = document.querySelector(".error-text1");
		const errorText2 = document.querySelector(".error-text2");
		const errorText3 = document.querySelector(".error-text3");
		const errorText4 = document.querySelector(".error-text4");
		const btn = document.querySelector(".CreateAcc");

		function active() {
			if (password.value.length >= 6) {
				btn.classList.add("active");
				errorText2.textContent = "";
			} else {
				btn.classList.remove("active");
				errorText2.textContent = "Mật khẩu phải tối thiểu 6 ký tự.";
			}
		}
		btn.onclick = function() {
			var check = true;

			if (password.value == "" || password.value == null) {
				errorText2.textContent = "Mật khẩu không được bỏ trống.";
				errorText2.classList.remove("matched");
				check = false;
			} else {
				errorText2.classList.add("matched");
				errorText2.textContent = "";
			}

			if (confirm_password.value == "" || confirm_password.value == null) {
				errorText3.textContent = "Mật khẩu không được bỏ trống.";
				errorText3.classList.remove("matched");
				check = false;
			} else {
				errorText3.classList.add("matched");
				errorText3.textContent = "";
			}

			if (password.value != confirm_password.value) {
				errorText3.style.display = "block";
				errorText3.classList.remove("matched");
				errorText3.textContent = "Nhập lại mật khẩu không chính xác";
				check = false;
			} else {
				errorText3.style.display = "block";
				errorText3.classList.add("matched");
				errorText3.textContent = "";
			}

			if (user.value == "" || user.value == null) {
				errorText1.textContent = "Email không được bỏ trống.";
				errorText1.classList.remove("matched");
				console.log("sadasdas");
				check = false;
			} else {
				errorText1.classList.add("matched");
				errorText1.textContent = "";
			}

			if (display_name.value == "" || display_name.value == null) {
				errorText4.textContent = "Họ tên không được bỏ trống";
				errorText4.classList.remove("matched");
				check = false;
			} else {
				errorText4.classList.add("matched");
				errorText4.textContent = "";
			}
			return check;
		}
	</script>
</body>
