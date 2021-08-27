<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta charset="UTF-8">
<title>Quản lý tài khoản</title>
</head>
<body>

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
				<li class="active">Tài khoản</li>
			</ul>


			<div class="well">
				<h3 class="title_thanhtoan">Quản lý tài khoản</h3>

				<form:form action="quan-ly-tai-khoan" method="POST"
					modelAttribute="manageraccount" class="form-horizontal">

					<div class="control-group" hidden>
						<label class="control-label" for="inputEmail">E-mail</label>
						<div class="controls">
							<form:input type="email" id="userName" class="spanthanhtoan"
								placeholder=" email" path="user"/>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label">Họ tên<sup>*</sup></label>
						<div class="controls">
							<form:input id="fullName" type="text" class="spanthanhtoan"
								placeholder="Mời nhập họ tên" path="display_name" />
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">Địa chỉ <sup>*</sup></label>
						<div class="controls">
							<form:textarea path="address" rows="5" cols="30"
								style="width: 400px" />
						</div>
					</div>

					<div class="control-group ">
						<label class="control-label" for="inputPassword">Mật khẩu
							cũ</label>
						<div class="controls">
							<form:input class="spanthanhtoan" onkeyup="active()"
								id="oldpassword" type="password" placeholder="Mời nhập mật khẩu" 
								style="margin-bottom: 15px" 
								path="password" />
						</div>
					</div>
					
					<div class="error-text1 error-text-manager"> ${ status_edit }</div>
					
					<div class="control-group ">
						<label class="control-label" for="inputPassword">Mật khẩu
							mới</label>
						<div class="controls">
							<form:input class="spanthanhtoan" onkeyup="active()"
								id="newpassword" type="password" placeholder="Mời nhập mật khẩu"
								style="margin-bottom: 15px" path="password" />
						</div>
					</div>

					<div class="error-text2 error-text-manager"></div>

					<div class="control-group">
						<label class="control-label" for="inputPassword">Nhập lại
							mật khẩu</label>
						<div class="controls">
							<input id="confirm_password" name="confirm_password"
								type="password" class="spanthanhtoan"
								placeholder="Nhập lại mật khẩu" />
						</div>
					</div>
					
					 <div class="error-text3 error-text-manager"></div>
					 
					<div class="control-group">
						<div class="controls">
							<input type="submit" name="submitAccount"
								value="Thay đổi thông tin" class="shopBtn exclusive ok"> 
							<a href="${ReturnUrl }" class="cancelBtn exclusive">Hủy</a>
						</div>
					</div>
					
				</form:form>
			</div>



		</div>
	</div>


	 <script type="text/javascript">
	 const oldpassword = document.querySelector("#oldpassword");
	 const newpassword = document.querySelector("#newpassword");
     const confirm_password = document.querySelector("#confirm_password");
     const errorText2 = document.querySelector(".error-text2");
     const errorText3 = document.querySelector(".error-text3");
     const btn = document.querySelector(".ok");
     
     function active(){
       if(newpassword.value.length >= 6){
         btn.classList.add("active");
       }else{ 
         btn.classList.remove("active"); 
       }
     }
     oldpassword.onkeypress = function() {
    	 
     }
     btn.onclick = function(){
   	   var check = true;   
         if( oldpassword.value != "" && (newpassword.value == "" || newpassword.value == null)) {
      	   errorText2.textContent = "The confirm-password feild is required";
      	   errorText2.classList.remove("matched");
      	   check = false;
         } else {
      	   errorText2.classList.add("matched");
      	   errorText2.textContent = "";
         }
         
         if(newpassword.value != confirm_password.value){
           errorText3.classList.remove("matched");
           errorText3.textContent = "Error! Confirm Password Not Match";
           check = false;
         }else{
            errorText3.classList.add("matched");
           errorText3.textContent = "";
         }
         
       	return check;
       }
    
	</script> 
</body>
