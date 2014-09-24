chai = require 'chai'
expect = chai.expect
Fizzbuzz = require '../lib/fizzbuzz.coffee'

describe 'Fizzbuzz', -> 

  before ->
    @fizzbuzz = new Fizzbuzz

  it 'knows that 3 is divisible by 3', ->
    expect(@fizzbuzz._isDivisibleBy(3, 3)).to.be.true

  it 'knows that 1 is not divisible by 3', ->
    expect(@fizzbuzz._isDivisibleBy(1, 3)).to.be.false

  it 'knows that 5 is divisible by 5', ->
    expect(@fizzbuzz._isDivisibleBy(5, 5)).to.be.true

  it 'knows that 1 is not divisible by 5', ->
    expect(@fizzbuzz._isDivisibleBy(1, 5)).to.be.false

  it 'knows that 15 is divisible by 15', ->
    expect(@fizzbuzz._isDivisibleBy(15, 15)).to.be.true

  it 'returns fizz for numbers which are divisible by 3', ->
    expect(@fizzbuzz.fizzbuzz(3)).to.eq('fizz')

  it 'returns buzz for numbers which are divisible by 5', ->
    expect(@fizzbuzz.fizzbuzz(5)).to.eq('buzz')

  it 'returns fizzbuzz for numbers which are divisible by 15', ->
    expect(@fizzbuzz.fizzbuzz(15)).to.eq('fizzbuzz')

  it 'returns the number itself if the number is not divisible by 3, 5, or 15', ->
    expect(@fizzbuzz.fizzbuzz(1)).to.eq(1)