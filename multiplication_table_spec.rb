require './multiplication_table'

describe MultiplicationTable do
  subject { described_class.new list }

  describe '#to_s' do
    let(:list) { [1, 2, 3] }

    it 'should print the multiplication table for a given list' do
      expect(subject.to_s).to eql(
        <<-eos
       |       1       2       3
--------------------------------
     1 |       1       2       3
     2 |       2       4       6
     3 |       3       6       9
        eos
      )
    end
  end
end
