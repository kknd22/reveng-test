package com.revengtest



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VisitController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Visit.list(params), model:[visitInstanceCount: Visit.count()]
    }

    def show(Visit visitInstance) {
        respond visitInstance
    }

    def create() {
        respond new Visit(params)
    }

    @Transactional
    def save(Visit visitInstance) {
        if (visitInstance == null) {
            notFound()
            return
        }

        if (visitInstance.hasErrors()) {
            respond visitInstance.errors, view:'create'
            return
        }

        visitInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'visitInstance.label', default: 'Visit'), visitInstance.id])
                redirect visitInstance
            }
            '*' { respond visitInstance, [status: CREATED] }
        }
    }

    def edit(Visit visitInstance) {
        respond visitInstance
    }

    @Transactional
    def update(Visit visitInstance) {
        if (visitInstance == null) {
            notFound()
            return
        }

        if (visitInstance.hasErrors()) {
            respond visitInstance.errors, view:'edit'
            return
        }

        visitInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Visit.label', default: 'Visit'), visitInstance.id])
                redirect visitInstance
            }
            '*'{ respond visitInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Visit visitInstance) {

        if (visitInstance == null) {
            notFound()
            return
        }

        visitInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Visit.label', default: 'Visit'), visitInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'visitInstance.label', default: 'Visit'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
