package com.revengtest

class User {

	Boolean accountExpired
	Boolean accountLocked
	Boolean enabled
	String password
	Boolean passwordExpired
	String username

	static hasMany = [roles: Role]

	static constraints = {
		username unique: true
	}
}
