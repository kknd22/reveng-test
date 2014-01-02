package com.me

import grails.transaction.Transactional

import com.revengtest.User

@Transactional
class MyUserService {

    def User getAUserById(int id) {
		def u = User.get(10)
		u
    }
}
