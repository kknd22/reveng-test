<%@ page import="com.revengtest.Library" %>



<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="library.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${libraryInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: libraryInstance, field: 'visits', 'error')} ">
	<label for="visits">
		<g:message code="library.visits.label" default="Visits" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${libraryInstance?.visits?}" var="v">
    <li><g:link controller="visit" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="visit" action="create" params="['library.id': libraryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'visit.label', default: 'Visit')])}</g:link>
</li>
</ul>

</div>

