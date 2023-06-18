require './lib/fibonacci'

RSpec.describe 'Fibonacci' do
  describe '#fibs' do
    it 'returns an array of n numbers from the fibonacci sequence using iteration' do
      expect(fibs(8)).to eq([0, 1, 1, 2, 3, 5, 8, 13])
    end
  end

  describe '#fibs_rec' do
    before do
      allow(self).to receive(:puts)
    end

    context 'when max_count is zero' do
      it 'prints error message if max_count is zero' do
      # expect(self).to receive(:puts).with('Not a valid count of fibonacci numbers')
      # fibs_rec(0)
        # expect { fibs_rec(0) }.to output("Not a valid count of fibonacci numbers\n").to_stdout
        expect(fibs_rec(0)).to eq(nil)
      end
    end

    context 'when max_count is 1' do
      it 'returns [0]' do
        expect(fibs(1)).to eq([0])
      end
    end

    context 'when max_count is 2' do
      it 'returns [0, 1]' do
        expect(fibs(2)).to eq([0, 1])
      end
    end
    
    it 'returns an array of 3 numbers from the fibonacci sequence using recursion' do
      expect(fibs_rec(3)).to eq([0, 1, 1])
    end

    it 'returns an array of 8 numbers from the fibonacci sequence using recursion' do
      expect(fibs_rec(8)).to eq([0, 1, 1, 2, 3, 5, 8, 13])
    end
  end
end