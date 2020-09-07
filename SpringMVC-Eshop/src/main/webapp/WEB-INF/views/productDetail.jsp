<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<section>
	<div class="container">
		<div class="row">	
			<jsp:include page="category.jsp"></jsp:include>
			<div class="col-sm-9 padding-right">
				<div class="product-details">
					<!--product-details-->
					<div class="col-sm-5">
						<div class="view-product">
							<img
								src="${pageContext.request.contextPath}/resources/images/product-details/1.jpg"
								alt="" />
							<h3>ZOOM</h3>
						</div>
						<div id="similar-product" class="carousel slide"
							data-ride="carousel">

							<!-- Wrapper for slides -->
							<div class="carousel-inner">
								<div class="item active">
									<a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/similar1.jpg"
										alt=""></a> <a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/similar2.jpg"
										alt=""></a> <a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/similar3.jpg"
										alt=""></a>
								</div>
								<div class="item">
									<a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/similar1.jpg"
										alt=""></a> <a href=""><img
										src="images/product-details/similar2.jpg" alt=""></a> <a
										href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/similar3.jpg"
										alt=""></a>
								</div>
								<div class="item">
									<a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/similar1.jpg"
										alt=""></a> <a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/similar2.jpg"
										alt=""></a> <a href=""><img
										src="${pageContext.request.contextPath}/resources/images/product-details/similar3.jpg"
										alt=""></a>
								</div>

							</div>

							<!-- Controls -->
							<a class="left item-control" href="#similar-product"
								data-slide="prev"> <i class="fa fa-angle-left"></i>
							</a> <a class="right item-control" href="#similar-product"
								data-slide="next"> <i class="fa fa-angle-right"></i>
							</a>
						</div>

					</div>
					<div class="col-sm-7">
						<div class="product-information">
							<!--/product-information-->
							<img
								src="${pageContext.request.contextPath}/resources/images/product-details/new.jpg"
								class="newarrival" alt="" />
							<h2>Anne Klein Sleeveless Colorblock Scuba</h2>
							<p>Web ID: 07011996</p>
							<img
								src="${pageContext.request.contextPath}/resources/images/product-details/rating.png"
								alt="" /> <span> <span>US $59</span> <label>Quantity:</label>
								<input type="text" value="3" />
								<button type="button" class="btn btn-fefault cart">
									<i class="fa fa-shopping-cart"></i> Add to cart
								</button>
							</span>
							<p>
								<b>Availability:</b> In Stock
							</p>
							<p>
								<b>Condition:</b> New
							</p>
							<p>
								<b>Brand:</b> E-SHOP
							</p>
							<a href=""><img
								src="${pageContext.request.contextPath}/resources/images/product-details/share.png"
								class="share img-responsive" alt="" /></a>
						</div>
						<!--/product-information-->
					</div>
				</div>
				<!--/product-details-->

				<div class="category-tab shop-details-tab">
					<!--category-tab-->
					<div class="col-sm-12">
						<ul class="nav nav-tabs">
							<li><a href="#details" data-toggle="tab">Details</a></li>
							<li><a href="#companyprofile" data-toggle="tab">Company
									Profile</a></li>
							<li><a href="#tag" data-toggle="tab">Tag</a></li>
							<li class="active"><a href="#reviews" data-toggle="tab">Reviews
									(5)</a></li>
						</ul>
					</div>
					<div class="tab-content">
						<div class="tab-pane fade" id="details">
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img
												src="${pageContext.request.contextPath}/resources/images/home/gallery1.jpg"
												alt="" />
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Add to cart
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img
												src="${pageContext.request.contextPath}/resources/images/home/gallery2.jpg"
												alt="" />
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Add to cart
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img
												src="${pageContext.request.contextPath}/resources/images/home/gallery3.jpg"
												alt="" />
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Add to cart
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img
												src="${pageContext.request.contextPath}/resources/images/home/gallery4.jpg"
												alt="" />
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Add to cart
											</button>
										</div>
									</div>
								</div>
									</div>
						</div>

						<div class="tab-pane fade" id="companyprofile">
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img
												src="${pageContext.request.contextPath}/resources/images/home/gallery1.jpg"
												alt="" />
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Add to cart
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img
												src="${pageContext.request.contextPath}/resources/images/home/gallery3.jpg"
												alt="" />
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Add to cart
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img
												src="${pageContext.request.contextPath}/resources/images/home/gallery2.jpg"
												alt="" />
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Add to cart
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img
												src="${pageContext.request.contextPath}/resources/images/home/gallery4.jpg"
												alt="" />
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Add to cart
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="tab-pane fade" id="tag">
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img
												src="${pageContext.request.contextPath}/resources/images/home/gallery1.jpg"
												alt="" />
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Add to cart
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img
												src="${pageContext.request.contextPath}/resources/images/home/gallery2.jpg"
												alt="" />
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Add to cart
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img
												src="${pageContext.request.contextPath}/resources/images/home/gallery3.jpg"
												alt="" />
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Add to cart
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img
												src="${pageContext.request.contextPath}/resources/images/home/gallery4.jpg"
												alt="" />
											<h2>$56</h2>
											<p>Easy Polo Black Edition</p>
											<button type="button" class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Add to cart
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="tab-pane fade active in" id="reviews">
							<div class="col-sm-12">
								<ul>
									<li><a href=""><i class="fa fa-user"></i>Cuong</a></li>
									<li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
									<li><a href=""><i class="fa fa-calendar-o"></i>12 June
											2019</a></li>
								</ul>
								<p>Personally, I am very pleased with all products sold in
									shops, products with good materials and quality assurance.
									Especially your website makes it easy for customers to choose
									products according to their needs and prices.</p>
								<p>
									<b>Write Your Review</b>
								</p>

								<form action="#">
									<span> <input type="text" placeholder="Your Name" /> <input
										type="email" placeholder="Email Address" />
									</span>
									<textarea name=""></textarea>
									<b>Rating: </b> <img
										src="${pageContext.request.contextPath}/resources/images/product-details/rating.png"
										alt="" />
									<button type="button" class="btn btn-default pull-right">
										Submit</button>
								</form>
							</div>
						</div>

					</div>
				</div>
				<!--/category-tab-->

			</div>
		</div>
	</div>
</section>
</body>
</html>