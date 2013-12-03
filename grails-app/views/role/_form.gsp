<%@ page import="com.revengtest.Role" %>



<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'authority', 'error')} ">
	<label for="authority">
		<g:message code="role.authority.label" default="Authority" />
		
	</label>
	<g:textField name="authority" value="${roleInstance?.authority}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'users', 'error')} ">
	<label for="users">
		<g:message code="role.users.label" default="Users" />
		
	</label>
	
</div>

