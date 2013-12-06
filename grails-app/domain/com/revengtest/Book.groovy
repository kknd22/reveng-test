package com.revengtest

class Book {

	String title

	static hasMany = [authors: Author]
	static belongsTo = [Author]
	
	static reportable = [:]
}
