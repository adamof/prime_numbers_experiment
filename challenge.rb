class Challenge
  def initialize
    @prime_numbers = [2]
  end

  def numbers(needed_count: 10)
    number = 3

    while @prime_numbers.length < needed_count
      @prime_numbers << number if is_prime?(number)
      number += 2
    end

    @prime_numbers
  end

  private

  def is_prime?(candidate_number)
    sqrt_candidate_number = candidate_number**0.5

    @prime_numbers.each do |prime_number|
      return true if prime_number > sqrt_candidate_number
      return false if candidate_number%prime_number == 0
    end
  end
end
