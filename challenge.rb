require './primes_generator'
require './multiplication_table'

numbers = PrimesGenerator.first(10)
MultiplicationTable.new(numbers).print
