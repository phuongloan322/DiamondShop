<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<meta charset="UTF-8">
<title>Liên hệ</title>
<body>
	<!-- 
Body Section 
-->
	<hr class="soften">
	<div class="well well-small">
		<h1>Visit us</h1>
		<hr class="soften" />
		<div class="row-fluid">
			<div class="span8 relative">

				<iframe
					src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d2275.0881280978465!2d107.59406985134392!3d16.46404447679851!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3141a13eb021109d%3A0xe27d4f8ccdd554fd!2zVmlldGluYmFuayBUaOG7q2EgVGhpw6puIEh14bq_!5e0!3m2!1svi!2s!4v1629857788807!5m2!1svi!2s"
					width="100%" height="350" style="border: 0;" allowfullscreen=""
					loading="lazy"></iframe>
				<div class="absoluteBlk">
					<div class="well wellsmall">
						<h4>Thông tin liên hệ</h4>
						<h5>
							Tòa nhà VietinBank<br /> Số 02 Lê Quý Đôn, Phú Hội, TP Huế<br />
							<br /> phuongloan322000@gmail.com<br /> ﻿Tel 0923 588 447<br />
							Fax 0966 602 762<br /> web:wwwmysitedomain.com
						</h5>
					</div>
				</div>
			</div>

			<div class="span4">
				<h4>Email Us</h4>

				<form:form class="form-horizontal" action="lien-he" method="POST"
					modelAttribute="contact">
					<fieldset>
						<div class="control-group">
							<form:input type="text" class="input-xlarge"
								placeholder="Họ và tên" path="name" />
						</div>

						<div class="error-text1 error-text"></div>

						<div class="control-group">
							<form:input type="email" class="input-xlarge" placeholder="Email"
								path="email" />
						</div>

						<div class="error-text2 error-text"></div>

						<div class="control-group">
							<form:input type="text" class="input-xlarge"
								placeholder="Tiêu đề" path="title" />
						</div>

						<div class="error-text3 error-text"></div>

						<div class="control-group">
							<form:input type="text" class="input-xlarge"
								placeholder="Nội dung" path="content" />
						</div>
						<div >
							<button type="submit" class="CreateAcc ok">Send Email</button>
							
						</div>
					</fieldset>
				</form:form>
			</div>
		</div>
	</div>

	<script type="text/javascript">	
	 const name = document.querySelector("#name");
	 const email = document.querySelector("#email");
     const title = document.querySelector("#title");
     const btn = document.querySelector(".ok");
     const errorText1 = document.querySelector(".error-text1");
     const errorText2 = document.querySelector(".error-text2");
     const errorText3 = document.querySelector(".error-text3");
     var check;
     btn.onclick = function (){
    	 check = true;
    	 console.log("a");
         if(name.value == "" || name.value == null) {
      	   errorText1.textContent = "Xin nhập họ và tên.";
      	   errorText1.classList.remove("matched");
      	 console.log("b");
      	 	check = false;
         } else {
      	   errorText1.classList.add("matched");
      	   errorText1.textContent = "";
         }
         
         if(email.value == "" || email.value == null) {
        	   errorText2.textContent = "Xin nhập email.";
        	   errorText2.classList.remove("matched");
        	   check = false;
           } else {
        	   errorText2.classList.add("matched");
        	   errorText2.textContent = "";
           }
           
           if(title.value == "" || title.value == null) {
        	   errorText3.textContent = "Xin nhập tiêu đề.";
        	   errorText3.classList.remove("matched");
        	   check = false;
           } else {
        	   errorText3.classList.add("matched");
        	   errorText3.textContent = "";
           } 
           return check;
       }
     if ("${status_contact}" != "")
     	alert("Bạn đã gửi thư thành công");
	</script>
</body>