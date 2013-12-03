package com.revengtest

class CompoundUnique {

	String prop1
	String prop2
	String prop3
	String prop4
	String prop5

	static constraints = {
		prop2 unique: ["prop3", "prop4"]
	}
}
