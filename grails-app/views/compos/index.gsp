
<%@ page import="com.revengtest.Compos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'compos.label', default: 'Compos')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-compos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-compos" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'compos.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'compos.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="other" title="${message(code: 'compos.other.label', default: 'Other')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${composInstanceList}" status="i" var="composInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${composInstance.id}">${fieldValue(bean: composInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: composInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: composInstance, field: "other")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${composInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
