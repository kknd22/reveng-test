package com.revengtest

class Other {

	String username
	
	static transients = ['id']
	void setId(String id) { username = id }
	String getId() { return username}
	
	static mapping = {
		id name: "username", generator: "assigned"
		version "nonstandard_version_name"
	}
}
