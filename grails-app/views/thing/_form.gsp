<%@ page import="com.revengtest.Thing" %>



<div class="fieldcontain ${hasErrors(bean: thingInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="thing.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${thingInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: thingInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="thing.name.label" default="Name" />
		
	</label>
	<g:textField name="name" maxlength="123" value="${thingInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: thingInstance, field: 'floatValue', 'error')} required">
	<label for="floatValue">
		<g:message code="thing.floatValue.label" default="Float Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="floatValue" value="${fieldValue(bean: thingInstance, field: 'floatValue')}" required=""/>
</div>

