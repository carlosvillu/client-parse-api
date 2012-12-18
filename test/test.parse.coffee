should = require 'should'

Parse = require '../'
ParseObject = require '../src/object'

describe 'Class Parse', ->

  it 'Should be exist', ->
    Parse.should.be.instanceOf Function

  describe '#constructor', ->

    it 'Should throw exception if is missing APP_ID and REST_APP_KEY', ->
      (-> new Parse()).should.throw( 'missing Key' )

    describe '#createInstance', ->
      
      beforeEach ->
        @parse = new Parse 'app_key', 'rest_app_key'

      it 'Should exist a method to create instances', ->
        should.exist @parse.createInstance

      it 'Should return an instance of ParseObject', ->
        object = @parse.createInstance 'ParseObject', 'name'
        object.should.be.an.instanceOf ParseObject
        console.log object
