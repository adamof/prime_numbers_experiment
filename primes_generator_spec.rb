require './primes_generator'

describe PrimesGenerator do
  describe '.first' do
    it 'should return the first 10 prime numbers, if no count is passed' do
      expect(described_class.first).to eql(
        [2]
      )
    end

    it 'should return [] if 0 length is passed' do
      expect(described_class.first(0)).to eql(
        []
      )
    end

    it 'should return the first 10 prime numbers' do
      expect(described_class.first(10)).to eql(
        [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
      )
    end
  end
end
