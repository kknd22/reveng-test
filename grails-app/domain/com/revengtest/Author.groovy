package com.revengtest

class Author {

	String name

	static hasMany = [books: Book]
	
	static reportable = [:]
}
