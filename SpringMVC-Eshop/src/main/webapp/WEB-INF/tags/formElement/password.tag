<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ attribute name="idKey" required="true" type="java.lang.String" %>
<%@ attribute name="labelKey" required="true" type="java.lang.String" %>
<%@ attribute name="path" required="true" type="java.lang.String" %>
<%@ attribute name="mandatory" required="false" type="java.lang.Boolean" %>
<%@ attribute name="errorPath" required="false" type="java.lang.String" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="formElement" tagdir="/WEB-INF/tags/formElement" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="form-group">
    <label class="control-label form-label" for="${idKey}">
        <spring:message code="${labelKey}"/>
        <c:if test="${mandatory != null && mandatory == true}">
            <span class="mandatory">
                <spring:message code="form.required" var="requiredText"/>
                <img width="5" height="6" alt="${requiredText}"
                     title="${requiredText}"
                     src="${pageContext.request.contextPath}/resources/images/mandatory.gif">
            </span>
        </c:if>
        <formElement:error path="${path}"/>
    </label>
    <div class="controls">
        <form:password cssClass="form-password" id="${idKey}" path="${path}"
                       autocomplete="off"/>
    </div>
</div>
