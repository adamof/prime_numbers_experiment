require './challenge'

describe Challenge do
  it 'should pass' do
    true
  end

  describe '#numbers' do
    it 'should return the first 10 prime numbers' do
      expect(subject.numbers).to eql([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    end
  end
end
