<%@ page import="com.revengtest.Compos" %>



<div class="fieldcontain ${hasErrors(bean: composInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="compos.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${composInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: composInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="compos.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${composInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: composInstance, field: 'other', 'error')} ">
	<label for="other">
		<g:message code="compos.other.label" default="Other" />
		
	</label>
	<g:textField name="other" value="${composInstance?.other}"/>
</div>

