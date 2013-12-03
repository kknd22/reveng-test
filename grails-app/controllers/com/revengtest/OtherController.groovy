package com.revengtest



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OtherController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Other.list(params), model:[otherInstanceCount: Other.count()]
    }

    def show(Other otherInstance) {
        respond otherInstance
    }

    def create() {
        respond new Other(params)
    }

    @Transactional
    def save(Other otherInstance) {
        if (otherInstance == null) {
            notFound()
            return
        }

        if (otherInstance.hasErrors()) {
            respond otherInstance.errors, view:'create'
            return
        }

        otherInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'otherInstance.label', default: 'Other'), otherInstance.id])
                redirect otherInstance
            }
            '*' { respond otherInstance, [status: CREATED] }
        }
    }

    def edit(Other otherInstance) {
        respond otherInstance
    }

    @Transactional
    def update(Other otherInstance) {
        if (otherInstance == null) {
            notFound()
            return
        }

        if (otherInstance.hasErrors()) {
            respond otherInstance.errors, view:'edit'
            return
        }

        otherInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Other.label', default: 'Other'), otherInstance.id])
                redirect otherInstance
            }
            '*'{ respond otherInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Other otherInstance) {

        if (otherInstance == null) {
            notFound()
            return
        }

        otherInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Other.label', default: 'Other'), otherInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'otherInstance.label', default: 'Other'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
