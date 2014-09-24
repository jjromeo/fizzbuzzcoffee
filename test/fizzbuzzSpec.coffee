chai = require 'chai'
expect = chai.expect
Fizzbuzz = require '../lib/fizzbuzz.coffee'

describe 'Fizzbuzz', -> 

  before ->
    @fizzbuzz = new Fizzbuzz

  it '3 is divisible by 3', ->
    expect(@fizzbuzz._isDivisibleByThree(3)).to.be.true

  it '3 is not divisible by 1', ->
    expect(@fizzbuzz._isDivisibleByThree(1)).to.be.false

  it '5 is divisible by 5', ->
    expect(@fizzbuzz._isDivisibleByFive(5)).to.be.true

  it '5 is not divisible by 1', ->
    expect(@fizzbuzz._isDivisibleByFive(1)).to.be.false

  it '15 is divisible by 15', ->
    expect(@fizzbuzz._isDivisibleByFifteen(15)).to.be.true

  it 'returns fizz for numbers which are divisible by 3', ->
    expect(@fizzbuzz.fizzbuzz(3)).to.eq('fizz')

  it 'returns buzz for numbers which are divisible by 5', ->
    expect(@fizzbuzz.fizzbuzz(5)).to.eq('buzz')

  it 'returns fizzbuzz for numbers which are divisible by 15', ->
    expect(@fizzbuzz.fizzbuzz(15)).to.eq('fizzbuzz')

  it 'returns the number itself if the number is not divisible by 3, 5, or 15', ->
    expect(@fizzbuzz.fizzbuzz(1)).to.eq(1)