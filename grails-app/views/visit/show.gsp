
<%@ page import="com.revengtest.Visit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'visit.label', default: 'Visit')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-visit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-visit" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list visit">
			
				<g:if test="${visitInstance?.library}">
				<li class="fieldcontain">
					<span id="library-label" class="property-label"><g:message code="visit.library.label" default="Library" /></span>
					
						<span class="property-value" aria-labelledby="library-label"><g:link controller="library" action="show" id="${visitInstance?.library?.id}">${visitInstance?.library?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${visitInstance?.person}">
				<li class="fieldcontain">
					<span id="person-label" class="property-label"><g:message code="visit.person.label" default="Person" /></span>
					
						<span class="property-value" aria-labelledby="person-label"><g:fieldValue bean="${visitInstance}" field="person"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${visitInstance?.visitDate}">
				<li class="fieldcontain">
					<span id="visitDate-label" class="property-label"><g:message code="visit.visitDate.label" default="Visit Date" /></span>
					
						<span class="property-value" aria-labelledby="visitDate-label"><g:formatDate date="${visitInstance?.visitDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:visitInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${visitInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
