
<%@ page import="com.revengtest.Visit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'visit.label', default: 'Visit')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-visit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-visit" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="visit.library.label" default="Library" /></th>
					
						<g:sortableColumn property="person" title="${message(code: 'visit.person.label', default: 'Person')}" />
					
						<g:sortableColumn property="visitDate" title="${message(code: 'visit.visitDate.label', default: 'Visit Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${visitInstanceList}" status="i" var="visitInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${visitInstance.id}">${fieldValue(bean: visitInstance, field: "library")}</g:link></td>
					
						<td>${fieldValue(bean: visitInstance, field: "person")}</td>
					
						<td><g:formatDate date="${visitInstance.visitDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${visitInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
