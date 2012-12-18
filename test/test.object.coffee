should = require 'should'
ParseObject = require '../src/object'

describe 'Clase ParseObject', ->

  describe '#constructor', ->
    it 'Should throw an exception with no correct params', ->
      (-> new ParseObject()).should.throw()

  describe '#create', ->
    it 'Should request at the server with the correct url'
    it 'Should request with the correct headers'
    it 'Should request with a Post at the server with the object'
