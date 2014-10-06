class MultiplicationTable
  def print(numbers)
    puts table_header(numbers)

    numbers.each_with_index do |_, index|
      puts table_row(numbers, index)
    end
  end

  private

  def table_header(numbers)
    header = '|'.rjust(8)

    numbers.each do |number|
      header << number.to_s.rjust(8)
    end

    header << "\n#{"-" * header.length}"
  end

  def table_row(numbers, index)
    row = "#{numbers[index]} |".rjust(8)

    numbers.each do |number|
      row << (number * numbers[index]).to_s.rjust(8)
    end

    row
  end
end
