chai = require 'chai'
expect = chai.expect
Fizzbuzz = require '../lib/fizzbuzz.coffee'

describe 'Fizzbuzz', -> 

  before ->
    @fizzbuzz = new Fizzbuzz

  it '3 is divisible by 3', ->
    expect(@fizzbuzz.isDivisibleByThree(3)).to.be.true

  it '3 is not divisible by 1', ->
    expect(@fizzbuzz.isDivisibleByThree(1)).to.be.false

  it '5 is divisible by 5', ->
    expect(@fizzbuzz.isDivisibleByFive(5)).to.be.true

  it '5 is not divisible by 1', ->
    expect(@fizzbuzz.isDivisibleByFive(1)).to.be.false

  it '15 is divisible by 15', ->
    expect(@fizzbuzz.isDivisibleByFifteen(15)).to.be.true

