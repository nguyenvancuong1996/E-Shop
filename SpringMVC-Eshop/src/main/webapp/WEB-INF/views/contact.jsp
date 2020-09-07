<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Contact Page</title>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/prettyPhoto.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/price-range.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/animate.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/main.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/responsive.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.scrollUp.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/price-range.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.prettyPhoto.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="contact-page" class="container">
		<div class="bg">
			<div class="row">
				<div class="col-sm-12">
					<h2 class="title text-center">
						Contact <strong>Us</strong>
					</h2>
					<div id="gmap" class="contact-map"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-8">
					<div class="contact-form">
						<h2 class="title text-center">Get In Touch</h2>
						<div class="status alert alert-success" style="display: none"></div>
						<form id="main-contact-form" class="contact-form row"
							name="contact-form" method="post">
							<div class="form-group col-md-6">
								<input type="text" name="name" class="form-control"
									required="required" placeholder="Name">
							</div>
							<div class="form-group col-md-6">
								<input type="email" name="email" class="form-control"
									required="required" placeholder="Email">
							</div>
							<div class="form-group col-md-12">
								<input type="text" name="subject" class="form-control"
									required="required" placeholder="Subject">
							</div>
							<div class="form-group col-md-12">
								<textarea name="message" id="message" required="required"
									class="form-control" rows="8" placeholder="Your Message Here"></textarea>
							</div>
							<div class="form-group col-md-12">
								<input type="submit" name="submit"
									class="btn btn-primary pull-right" value="Submit">
							</div>
						</form>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="contact-info">
						<h2 class="title text-center">Contact Info</h2>
						<address>
							<p>E-Shopper Inc.</p>
							<p>1113 Nguyen Van Linh street, Hai Chau District</p>
							<p>DaNang VietNam</p>
							<p>Mobile: 0898232203</p>
							<p>Fax: 1-000-111-2222</p>
							<p>Email: vancuong19961@gmail.com</p>
						</address>
						<div class="social-networks">
							<h2 class="title text-center">Social Networking</h2>
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-youtube"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/#contact-page-->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>