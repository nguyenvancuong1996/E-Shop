<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ attribute name="path" required="true" type="java.lang.String" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<spring:bind path="${path}">
    <c:choose>
        <c:when test="${not empty status.errorMessages}">
            <div class="form-group has-error">
                <jsp:doBody/>
                <div class="help-block">
                    <form:errors path="${path}"/>
                </div>
            </div>
        </c:when>
        <c:otherwise>
            <jsp:doBody/>
        </c:otherwise>
    </c:choose>
</spring:bind>
