
<%@ page import="com.revengtest.CompoundUnique" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'compoundUnique.label', default: 'CompoundUnique')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-compoundUnique" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-compoundUnique" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list compoundUnique">
			
				<g:if test="${compoundUniqueInstance?.prop2}">
				<li class="fieldcontain">
					<span id="prop2-label" class="property-label"><g:message code="compoundUnique.prop2.label" default="Prop2" /></span>
					
						<span class="property-value" aria-labelledby="prop2-label"><g:fieldValue bean="${compoundUniqueInstance}" field="prop2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${compoundUniqueInstance?.prop1}">
				<li class="fieldcontain">
					<span id="prop1-label" class="property-label"><g:message code="compoundUnique.prop1.label" default="Prop1" /></span>
					
						<span class="property-value" aria-labelledby="prop1-label"><g:fieldValue bean="${compoundUniqueInstance}" field="prop1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${compoundUniqueInstance?.prop3}">
				<li class="fieldcontain">
					<span id="prop3-label" class="property-label"><g:message code="compoundUnique.prop3.label" default="Prop3" /></span>
					
						<span class="property-value" aria-labelledby="prop3-label"><g:fieldValue bean="${compoundUniqueInstance}" field="prop3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${compoundUniqueInstance?.prop4}">
				<li class="fieldcontain">
					<span id="prop4-label" class="property-label"><g:message code="compoundUnique.prop4.label" default="Prop4" /></span>
					
						<span class="property-value" aria-labelledby="prop4-label"><g:fieldValue bean="${compoundUniqueInstance}" field="prop4"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${compoundUniqueInstance?.prop5}">
				<li class="fieldcontain">
					<span id="prop5-label" class="property-label"><g:message code="compoundUnique.prop5.label" default="Prop5" /></span>
					
						<span class="property-value" aria-labelledby="prop5-label"><g:fieldValue bean="${compoundUniqueInstance}" field="prop5"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:compoundUniqueInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${compoundUniqueInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
