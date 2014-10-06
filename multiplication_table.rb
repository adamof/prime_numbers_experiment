class MultiplicationTable
  def initialize(numbers)
    @numbers = numbers
  end

  def print
    puts table_header

    @numbers.each do |number|
      puts table_row(number)
    end
  end

  private

  def table_header
    header = '|'.rjust(8)

    @numbers.each do |number|
      header << number.to_s.rjust(8)
    end

    header << "\n#{"-" * header.length}"
  end

  def table_row(current_number)
    row = "#{current_number} |".rjust(8)

    @numbers.each do |number|
      row << (number * current_number).to_s.rjust(8)
    end

    row
  end
end
