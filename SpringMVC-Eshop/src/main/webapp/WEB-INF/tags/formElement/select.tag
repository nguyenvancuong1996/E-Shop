<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ attribute name="idKey" required="true" type="java.lang.String" %>
<%@ attribute name="labelKey" required="true" type="java.lang.String" %>
<%@ attribute name="path" required="true" type="java.lang.String" %>
<%@ attribute name="items" required="true" type="java.util.Map" %>
<%@ attribute name="mandatory" required="false" type="java.lang.Boolean" %>
<%@ attribute name="skipBlank" required="false" type="java.lang.Boolean" %>
<%@ attribute name="skipBlankMessage" required="false"
              type="java.lang.String" %>
<%@ attribute name="selectedValue" required="false" type="java.lang.String" %>
<%@ attribute name="tabindex" required="false" rtexprvalue="true" %>
<%@ attribute name="disabled" required="false" type="java.lang.Boolean" %>

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
        <form:select id="${idKey}" path="${path}"
                     cssClass="form-select" tabindex="${tabindex}"
                     disabled="${disabled}">
            <c:if test="${skipBlank == null || skipBlank == false}">
                <option value=""
                        disabled="disabled" ${empty selectedValue ? 'selected="selected"' : ''}>
                    <label>${skipBlankMessage}</label>
                </option>
            </c:if>
            <form:options items="${items}"/>
        </form:select>
    </div>
</div>

