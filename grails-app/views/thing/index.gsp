
<%@ page import="com.revengtest.Thing" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'thing.label', default: 'Thing')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-thing" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-thing" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'thing.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'thing.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="newColumn" title="${message(code: 'thing.newColumn.label', default: 'New Column')}" />
					
						<g:sortableColumn property="floatValue" title="${message(code: 'thing.floatValue.label', default: 'Float Value')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${thingInstanceList}" status="i" var="thingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${thingInstance.id}">${fieldValue(bean: thingInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: thingInstance, field: "name")}</td>
					
						<td><g:formatBoolean boolean="${thingInstance.newColumn}" /></td>
					
						<td>${fieldValue(bean: thingInstance, field: "floatValue")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${thingInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
