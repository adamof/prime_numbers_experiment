prime_numbers_experiment
========================

This generates the multiplication table for the first 10 prime numbers.

To run the code just do in shell
```
$ ruby challenge.rb
```

### PrimesGenerator
This class can be used to generate prime numbers using the ```first``` method.

Example:
```ruby
PrimesGenerator.first(10)
=> [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
```

### MultiplicationTable
This class can be used for printing the multiplication table for arbitrary numbers list.

Example:
```ruby
puts MultiplicationTable.new([1,2,3]).to_s
       |       1       2       3
--------------------------------
     1 |       1       2       3
     2 |       2       4       6
     3 |       3       6       9
```
