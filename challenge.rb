class Challenge
  def run
    numbers = prime_numbers needed_count: 10
    puts table_header(numbers)

    numbers.each_with_index do |_, index|
      puts table_row(numbers, index)
    end
  end

  def prime_numbers(needed_count: 10)
    return [] unless needed_count > 0

    prime_numbers = [2]
    number = 3

    while prime_numbers.length < needed_count
      prime_numbers << number if is_prime?(number, prime_numbers)
      number += 2
    end

    prime_numbers
  end

  private

  def table_header(numbers)
    header = "\t| "
    header << numbers.join("\t")
    header << "\n#{"-" * header.length * 3}"
  end

  def table_row(numbers, index)
    row = "#{numbers[index]}\t| "
    row << numbers.map { |number| number * numbers[index] }.join("\t")
  end

  def is_prime?(candidate_number, prime_numbers)
    sqrt_candidate_number = candidate_number**0.5

    prime_numbers.each do |prime_number|
      return true if prime_number > sqrt_candidate_number
      return false if candidate_number%prime_number == 0
    end
  end
end

Challenge.new.run
