
<%@ page import="com.revengtest.Thing" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'thing.label', default: 'Thing')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-thing" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-thing" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list thing">
			
				<g:if test="${thingInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="thing.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${thingInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${thingInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="thing.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${thingInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${thingInstance?.newColumn}">
				<li class="fieldcontain">
					<span id="newColumn-label" class="property-label"><g:message code="thing.newColumn.label" default="New Column" /></span>
					
						<span class="property-value" aria-labelledby="newColumn-label"><g:formatBoolean boolean="${thingInstance?.newColumn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${thingInstance?.floatValue}">
				<li class="fieldcontain">
					<span id="floatValue-label" class="property-label"><g:message code="thing.floatValue.label" default="Float Value" /></span>
					
						<span class="property-value" aria-labelledby="floatValue-label"><g:fieldValue bean="${thingInstance}" field="floatValue"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:thingInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${thingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
