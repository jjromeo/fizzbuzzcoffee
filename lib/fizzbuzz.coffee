class Fizzbuzz

  _isDivisibleBy: (number, divisor) ->
    number % divisor == 0

  fizzbuzz: (number) ->
    return 'fizzbuzz' if @_isDivisibleBy number, 15
    return 'fizz' if @_isDivisibleBy number, 3
    return 'buzz' if @_isDivisibleBy number, 5
    return number



module.exports = Fizzbuzz