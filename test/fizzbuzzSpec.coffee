chai = require 'chai'
expect = chai.expect
Fizzbuzz = require '../lib/fizzbuzz.coffee'

describe 'Fizzbuzz', -> 
  it '3 is divisible by 3', ->
    fizzbuzz = new Fizzbuzz()
    expect(fizzbuzz.isDivisibleByThree(3)).to.be.true

  it '3 is not divisible by 1', ->
    fizzbuzz = new Fizzbuzz()
    expect(fizzbuzz.isDivisibleByThree(1)).to.be.false
