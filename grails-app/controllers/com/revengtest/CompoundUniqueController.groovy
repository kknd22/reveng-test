package com.revengtest



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CompoundUniqueController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CompoundUnique.list(params), model:[compoundUniqueInstanceCount: CompoundUnique.count()]
    }

    def show(CompoundUnique compoundUniqueInstance) {
        respond compoundUniqueInstance
    }

    def create() {
        respond new CompoundUnique(params)
    }

    @Transactional
    def save(CompoundUnique compoundUniqueInstance) {
        if (compoundUniqueInstance == null) {
            notFound()
            return
        }

        if (compoundUniqueInstance.hasErrors()) {
            respond compoundUniqueInstance.errors, view:'create'
            return
        }

        compoundUniqueInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'compoundUniqueInstance.label', default: 'CompoundUnique'), compoundUniqueInstance.id])
                redirect compoundUniqueInstance
            }
            '*' { respond compoundUniqueInstance, [status: CREATED] }
        }
    }

    def edit(CompoundUnique compoundUniqueInstance) {
        respond compoundUniqueInstance
    }

    @Transactional
    def update(CompoundUnique compoundUniqueInstance) {
        if (compoundUniqueInstance == null) {
            notFound()
            return
        }

        if (compoundUniqueInstance.hasErrors()) {
            respond compoundUniqueInstance.errors, view:'edit'
            return
        }

        compoundUniqueInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CompoundUnique.label', default: 'CompoundUnique'), compoundUniqueInstance.id])
                redirect compoundUniqueInstance
            }
            '*'{ respond compoundUniqueInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CompoundUnique compoundUniqueInstance) {

        if (compoundUniqueInstance == null) {
            notFound()
            return
        }

        compoundUniqueInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CompoundUnique.label', default: 'CompoundUnique'), compoundUniqueInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'compoundUniqueInstance.label', default: 'CompoundUnique'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
