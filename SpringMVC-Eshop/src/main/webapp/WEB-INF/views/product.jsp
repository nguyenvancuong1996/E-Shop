<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<section>
	<div class="container">
		<div class="row">
			<div class="brands_products">
				<!--brands_products-->
					<div style="color: orange;font-size:35px;text-align:justify">
						<h2>Features Items</h2>
						<div class="col-sm-9 padding-center">
							<c:forEach var="item" items="${listProduct}">
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img
													src="${pageContext.request.contextPath}/resources/images/product-details/1.jpg"
													alt="" />
												<h2>${item.productPrice}</h2>
												<p>${item.productName}</p>
												<a href="#" class="btn btn-default add-to-cart"><i
													class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>
											<div class="product-overlay">
												<div class="overlay-content">
													<h2>${item.productPrice}</h2>
													<p>${item.productName}</p>
													<a
														href="${pageContext.request.contextPath}/getProduct?id=${item.id}"
														class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Open detail</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--features_items-->