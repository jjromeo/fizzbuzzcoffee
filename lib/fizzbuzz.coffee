class Fizzbuzz
  _isDivisibleByThree: (number) ->
    number % 3 == 0

  _isDivisibleByFive: (number) ->
    number % 5 == 0

  _isDivisibleByFifteen: (number) ->
    number % 15 == 0

  fizzbuzz: (number) ->
    return 'fizzbuzz' if @_isDivisibleByFifteen number
    return 'fizz' if @_isDivisibleByThree number
    return 'buzz' if @_isDivisibleByFive number
    return number



module.exports = Fizzbuzz