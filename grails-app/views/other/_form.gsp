<%@ page import="com.revengtest.Other" %>



<div class="fieldcontain ${hasErrors(bean: otherInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="other.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${otherInstance?.username}"/>
</div>

