class Challenge
  def numbers(needed_count: 10)
    numbers = [2,3]

    number = 5

    while numbers.length < needed_count
      divider = get_divider(number)
      numbers << number if divider == number
      number += 2
    end

    numbers
  end

  private

  def get_divider(number)
    j = 2
    while j <= number
      break if number%j == 0
      j += 1
    end
    j
  end

  def is_prime?(number)

  end
end
