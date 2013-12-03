<%@ page import="com.revengtest.Visit" %>



<div class="fieldcontain ${hasErrors(bean: visitInstance, field: 'library', 'error')} required">
	<label for="library">
		<g:message code="visit.library.label" default="Library" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="library" name="library.id" from="${com.revengtest.Library.list()}" optionKey="id" required="" value="${visitInstance?.library?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: visitInstance, field: 'person', 'error')} ">
	<label for="person">
		<g:message code="visit.person.label" default="Person" />
		
	</label>
	<g:textField name="person" value="${visitInstance?.person}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: visitInstance, field: 'visitDate', 'error')} required">
	<label for="visitDate">
		<g:message code="visit.visitDate.label" default="Visit Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="visitDate" precision="day"  value="${visitInstance?.visitDate}"  />
</div>

