require './primes_generator'
require './multiplication_table'

numbers = PrimesGenerator.first(10)
puts MultiplicationTable.new(numbers).to_s
