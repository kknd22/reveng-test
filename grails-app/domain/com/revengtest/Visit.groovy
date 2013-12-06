package com.revengtest

class Visit {

	String person
	Date visitDate
	Library library

	static belongsTo = [Library]

	static mapping = {
		version false
	}
	
	static reportable = [:]
}
