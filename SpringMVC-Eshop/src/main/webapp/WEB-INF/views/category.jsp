<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="col-sm-3">
	<div class="left-sidebar">
		<div class="brands_products">
			<!--brands_products-->
			<h2>Category</h2>
			<div class="brands-name">
				<ul class="nav nav-pills nav-stacked">
					<c:forEach var="item" items="${listCategory}">
						<li><a href="${pageContext.request.contextPath}/listProduct?categoryID=${item.id}">
								${item.categoryName}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<!--/brands_products-->

		<div class="price-range">
			<!--price-range-->
			<h2>Price Range</h2>
			<div class="well text-center">
				<input type="text" class="span2" value="" data-slider-min="0"
					data-slider-max="600" data-slider-step="5"
					data-slider-value="[250,450]" id="sl2"><br /> <b
					class="pull-left">$ 0</b> <b class="pull-right">$ 800</b>
			</div>
		</div>
		<!--/price-range-->
	</div>
</div>
