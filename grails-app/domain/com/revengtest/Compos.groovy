package com.revengtest

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class Compos implements Serializable {

	String firstName
	String lastName
	String other

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append firstName
		builder.append lastName
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append firstName, other.firstName
		builder.append lastName, other.lastName
		builder.isEquals()
	}

	static mapping = {
		id composite: ["firstName", "lastName"]
	}
}
