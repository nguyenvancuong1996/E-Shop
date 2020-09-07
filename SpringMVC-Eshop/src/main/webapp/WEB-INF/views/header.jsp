<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header id="header">
	<!--header-->
	<div class="header_top">
		<!--header_top-->
		<div class="container">
				<div class="pull-right">
					<div style="color: orange">
					<span>Welcome to Tung Le Thanh Store !</span>
				</div>
			</div>
			<div class="row">

				<div class="col-sm-6">
					<div class="contactinfo">
						<ul class="nav nav-pills">
							<li><a href="#"><i class="fa fa-phone"></i>
									0898232203 </a></li>
							<li><a href="#"><i class="fa fa-envelope"></i>
									vancuong19961@gmail.com</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="social-icons pull-right">
						<ul class="nav navbar-nav">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header_top-->

	<div class="header-middle">
		<!--header-middle-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="logo pull-left">
						<a href="homepage.html"><img
							src="${pageContext.request.contextPath}/resources/images/home/logo.png"
							alt="" /></a>
					</div>
					<div class="btn-group pull-right">
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle usa"
								data-toggle="dropdown">
								USA <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">Canada</a></li>
								<li><a href="#">UK</a></li>
							</ul>
						</div>

						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle usa"
								data-toggle="dropdown">
								DOLLAR <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">Canadian Dollar</a></li>
								<li><a href="#">Pound</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav">
							<li><a href="homepage.html"><i class="fa fa-user"></i>
									Home</a></li>
							<li><a href="cart"><i class="fa fa-shopping-cart"></i>
									Cart</a></li>
							<li><a href="register.html"><i class="fa fa-lock"></i>
									Register</a></li>
							<li><a href="login.html"><i class="fa fa-lock"></i>
									Login</a></li>
							<li><a href="logout.html"><i class="fa fa-crosshairs"></i>
									Logout</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header-middle-->
</header>
<!--/header-->
