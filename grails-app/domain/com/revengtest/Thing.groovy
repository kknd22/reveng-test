package com.revengtest

class Thing {

	String email
	Float floatValue
	String name
	Boolean newColumn

	static mapping = {
		id column: "thing_id"
	}

	static constraints = {
		email unique: true
		name nullable: true, maxSize: 123
		newColumn nullable: true
	}
}
