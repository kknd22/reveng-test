
<%@ page import="com.revengtest.CompoundUnique" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'compoundUnique.label', default: 'CompoundUnique')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-compoundUnique" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-compoundUnique" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="prop2" title="${message(code: 'compoundUnique.prop2.label', default: 'Prop2')}" />
					
						<g:sortableColumn property="prop1" title="${message(code: 'compoundUnique.prop1.label', default: 'Prop1')}" />
					
						<g:sortableColumn property="prop3" title="${message(code: 'compoundUnique.prop3.label', default: 'Prop3')}" />
					
						<g:sortableColumn property="prop4" title="${message(code: 'compoundUnique.prop4.label', default: 'Prop4')}" />
					
						<g:sortableColumn property="prop5" title="${message(code: 'compoundUnique.prop5.label', default: 'Prop5')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${compoundUniqueInstanceList}" status="i" var="compoundUniqueInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${compoundUniqueInstance.id}">${fieldValue(bean: compoundUniqueInstance, field: "prop2")}</g:link></td>
					
						<td>${fieldValue(bean: compoundUniqueInstance, field: "prop1")}</td>
					
						<td>${fieldValue(bean: compoundUniqueInstance, field: "prop3")}</td>
					
						<td>${fieldValue(bean: compoundUniqueInstance, field: "prop4")}</td>
					
						<td>${fieldValue(bean: compoundUniqueInstance, field: "prop5")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${compoundUniqueInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
