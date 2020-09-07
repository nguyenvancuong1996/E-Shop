<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Slider Page</title>
</head>
<body>
	<section id="slider">
		<!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0"
								class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>

						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1>
										<span>E</span>-SHOP
									</h1>
									<h2>100% Responsive Design</h2>
									<p>E-Shop Store is the Big Online Store for All kind of
										products. We also free delivery all kind of our products as
										your ordering! So we are always stay-connecting with all
										customers!</p>
									<button type="button" class="btn btn-default get">Get
										it now</button>
								</div>
								<div class="col-sm-6">
									<img
										src="${pageContext.request.contextPath}/resources/images/home/girl1.jpg"
										class="girl img-responsive" alt="" /> <img
										src="${pageContext.request.contextPath}/resources/images/home/pricing.png"
										class="pricing" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1>
										<span>E</span>-SHOP
									</h1>
									<h2>E-commerce Template</h2>
									<p>Ready to start your next project with us? That's great!
										Give us a call or send us an email and we will get back to you
										as soon as possible!</p>
									<button type="button" class="btn btn-default get">Get
										it now</button>
								</div>
								<div class="col-sm-6">
									<img
										src="${pageContext.request.contextPath}/resources/images/home/girl2.jpg"
										class="girl img-responsive" alt="" /> <img
										src="${pageContext.request.contextPath}/resources/images/home/pricing.png"
										class="pricing" alt="" />
								</div>
							</div>

							<div class="item">
								<div class="col-sm-6">
									<h1>
										<span>E</span>-SHOP
									</h1>
									<h2>Sale 50%</h2>
									<p>Products are favored by customers and sold at attractive
										prices.</p>
									<button type="button" class="btn btn-default get">Get
										it now</button>
								</div>
								<div class="col-sm-6">
									<img
										src="${pageContext.request.contextPath}/resources/images/home/girl3.jpg"
										class="girl img-responsive" alt="" /> <img
										src="${pageContext.request.contextPath}/resources/images/home/pricing.png"
										class="pricing" alt="" />
								</div>
							</div>

						</div>

						<a href="#slider-carousel" class="left control-carousel hidden-xs"
							data-slide="prev"> <i class="fa fa-angle-left"></i>
						</a> <a href="#slider-carousel"
							class="right control-carousel hidden-xs" data-slide="next"> <i
							class="fa fa-angle-right"></i>
						</a>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!--/slider-->


</body>
</html>