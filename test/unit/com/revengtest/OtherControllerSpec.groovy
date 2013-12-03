package com.revengtest



import grails.test.mixin.*
import spock.lang.*

@TestFor(OtherController)
@Mock(Other)
class OtherControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.otherInstanceList
            model.otherInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.otherInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def other = new Other()
            other.validate()
            controller.save(other)

        then:"The create view is rendered again with the correct model"
            model.otherInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            other = new Other(params)

            controller.save(other)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/other/show/1'
            controller.flash.message != null
            Other.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def other = new Other(params)
            controller.show(other)

        then:"A model is populated containing the domain instance"
            model.otherInstance == other
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def other = new Other(params)
            controller.edit(other)

        then:"A model is populated containing the domain instance"
            model.otherInstance == other
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/other/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def other = new Other()
            other.validate()
            controller.update(other)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.otherInstance == other

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            other = new Other(params).save(flush: true)
            controller.update(other)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/other/show/$other.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/other/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def other = new Other(params).save(flush: true)

        then:"It exists"
            Other.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(other)

        then:"The instance is deleted"
            Other.count() == 0
            response.redirectedUrl == '/other/index'
            flash.message != null
    }
}
