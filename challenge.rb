class Challenge
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

  def is_prime?(candidate_number, prime_numbers)
    sqrt_candidate_number = candidate_number**0.5

    prime_numbers.each do |prime_number|
      return true if prime_number > sqrt_candidate_number
      return false if candidate_number%prime_number == 0
    end
  end
end
