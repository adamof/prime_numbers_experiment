class MultiplicationTable
  def initialize(numbers)
    @numbers = numbers
  end

  def to_s
    string = "#{table_header}\n"

    @numbers.each do |number|
      string << "#{table_row(number)}\n"
    end

    string
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
