package com.revengtest

class Other {

	String username

	static mapping = {
		id name: "username", generator: "assigned"
		version "nonstandard_version_name"
	}
}
