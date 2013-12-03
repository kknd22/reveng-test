<%@ page import="com.revengtest.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'authors', 'error')} ">
	<label for="authors">
		<g:message code="book.authors.label" default="Authors" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="book.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${bookInstance?.title}"/>
</div>

