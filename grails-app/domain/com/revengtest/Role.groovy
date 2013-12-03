package com.revengtest

class Role {

	String authority

	static hasMany = [users: User]
	static belongsTo = [User]

	static constraints = {
		authority unique: true
	}
}
