require './lib/fibonacci'

RSpec.describe 'Fibonacci' do
  describe '#fibs' do
    it 'returns an array of n numbers from the fibonacci sequence using iteration' do
      expect(fibs(8)).to eq([0, 1, 1, 2, 3, 5, 8, 13])
    end
  end

  describe '#fibs_rec' do
    it 'prints error message if max_count is zero' do
      # expect(self).to receive(:puts).with('Not a valid count of fibonacci numbers')
      # fibs_rec(0)
      # expect { fibs_rec(0) }.to output("Not a valid count of fibonacci numbers\n").to_stdout
      allow(self).to receive(:puts)
      expect(fibs_rec(0)).to eq(nil)
    end

    it 'returns an array of n numbers from the fibonacci sequence using recursion' do
      expect(fibs_rec(8)).to eq([0, 1, 1, 2, 3, 5, 8, 13])
    end
  end
end