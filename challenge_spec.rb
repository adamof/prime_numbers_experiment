require './challenge'

describe Challenge do
  describe '#prime_numbers' do
    it 'should return the first 10 prime numbers, if no count is passed' do
      expect(subject.prime_numbers).to eql(
        [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
      )
    end

    it 'should return the first 5 prime numbers' do
      expect(subject.prime_numbers(needed_count: 5)).to eql(
        [2, 3, 5, 7, 11]
      )
    end

    it 'should return [] if 0 length is passed' do
      expect(subject.prime_numbers(needed_count: 0)).to eql(
        []
      )
    end
  end
end
