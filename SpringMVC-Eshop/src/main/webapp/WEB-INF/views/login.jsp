<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="formElement" tagdir="/WEB-INF/tags/formElement"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!-- container -->
<section id="form">
	<!--form-->
	<div class="container">
		<div class="row">
			<div class="col-sm-4 col-sm-offset-1">
				<div class="login-form">
					<!--login form-->
					<div class="panel-title">
						<legend><div style="color: orange">Login to your account</div></legend>
						<div style="color: red">${message}</div>
						<form:form modelAttribute="loginForm" method="post"
							action="${pageContext.request.contextPath}/login">
							<formElement:input idKey="login.email" labelKey="login.email"
								path="email" mandatory="true" />
							<formElement:password idKey="login.password"
								labelKey="login.password" path="password" mandatory="true" />
							<span> <input type="checkbox" class="checkbox">
								Keep me signed in
							</span>
							<button type="submit" class="primary-btn">
								<spring:message code="login.submit" />
							</button>
						</form:form>
					</div>
					<!--/login form-->
				</div>
			</div>
		</div>
	</div>
</section>
<!--/form-->