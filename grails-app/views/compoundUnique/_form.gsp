<%@ page import="com.revengtest.CompoundUnique" %>



<div class="fieldcontain ${hasErrors(bean: compoundUniqueInstance, field: 'prop2', 'error')} ">
	<label for="prop2">
		<g:message code="compoundUnique.prop2.label" default="Prop2" />
		
	</label>
	<g:textField name="prop2" value="${compoundUniqueInstance?.prop2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: compoundUniqueInstance, field: 'prop1', 'error')} ">
	<label for="prop1">
		<g:message code="compoundUnique.prop1.label" default="Prop1" />
		
	</label>
	<g:textField name="prop1" value="${compoundUniqueInstance?.prop1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: compoundUniqueInstance, field: 'prop3', 'error')} ">
	<label for="prop3">
		<g:message code="compoundUnique.prop3.label" default="Prop3" />
		
	</label>
	<g:textField name="prop3" value="${compoundUniqueInstance?.prop3}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: compoundUniqueInstance, field: 'prop4', 'error')} ">
	<label for="prop4">
		<g:message code="compoundUnique.prop4.label" default="Prop4" />
		
	</label>
	<g:textField name="prop4" value="${compoundUniqueInstance?.prop4}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: compoundUniqueInstance, field: 'prop5', 'error')} ">
	<label for="prop5">
		<g:message code="compoundUnique.prop5.label" default="Prop5" />
		
	</label>
	<g:textField name="prop5" value="${compoundUniqueInstance?.prop5}"/>
</div>

