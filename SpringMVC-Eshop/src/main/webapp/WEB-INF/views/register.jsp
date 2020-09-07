<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="formElement" tagdir="/WEB-INF/tags/formElement"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<section id="form">
	<!--form-->
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="signup-form">
					<!--sign up form-->
					<div class="panel-title">

						<legend>
							<div style="color: orange">New User Signup !</div>
						</legend>
						${message}
						<form:form modelAttribute="registerForm" method="post"
							action="${pageContext.request.contextPath}/register">
							
							<formElement:input idKey="register.email"
								labelKey="register.email" path="email" mandatory="true" />
							<formElement:password idKey="register.pwd"
								labelKey="register.pwd" path="password" mandatory="true" />
							<formElement:password idKey="register.checkPwd"
								labelKey="register.checkPwd" path="checkedPassword"
								mandatory="true" />
							<formElement:input idKey="register.firstName"
								labelKey="register.firstName" path="firstName" mandatory="true" />
							<formElement:input idKey="register.lastName"
								labelKey="register.lastName" path="lastName" mandatory="true" />
							<formElement:select idKey="register.gender"
								labelKey="register.gender" path="gender" items="${genders}"
								mandatory="true" skipBlank="true" />
							<formElement:input idKey="phoneNumber" labelKey="Phone number"
								path="phoneNumber" mandatory="true" />
							<button type="submit" class="primary-btn">
								<spring:message code="register.submit" />
							</button>
						</form:form>
					</div>
				</div>
			</div>
		</div>
		<!-- /container -->
	</div>
</section>
<!-- /HOME -->
</body>
</html>