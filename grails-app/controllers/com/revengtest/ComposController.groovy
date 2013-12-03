package com.revengtest



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComposController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Compos.list(params), model:[composInstanceCount: Compos.count()]
    }

    def show(Compos composInstance) {
        respond composInstance
    }

    def create() {
        respond new Compos(params)
    }

    @Transactional
    def save(Compos composInstance) {
        if (composInstance == null) {
            notFound()
            return
        }

        if (composInstance.hasErrors()) {
            respond composInstance.errors, view:'create'
            return
        }

        composInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'composInstance.label', default: 'Compos'), composInstance.id])
                redirect composInstance
            }
            '*' { respond composInstance, [status: CREATED] }
        }
    }

    def edit(Compos composInstance) {
        respond composInstance
    }

    @Transactional
    def update(Compos composInstance) {
        if (composInstance == null) {
            notFound()
            return
        }

        if (composInstance.hasErrors()) {
            respond composInstance.errors, view:'edit'
            return
        }

        composInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Compos.label', default: 'Compos'), composInstance.id])
                redirect composInstance
            }
            '*'{ respond composInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Compos composInstance) {

        if (composInstance == null) {
            notFound()
            return
        }

        composInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Compos.label', default: 'Compos'), composInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'composInstance.label', default: 'Compos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
