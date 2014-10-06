class MultiplicationTable
  def print(numbers)
    puts table_header(numbers)

    numbers.each_with_index do |_, index|
      puts table_row(numbers, index)
    end
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
end
