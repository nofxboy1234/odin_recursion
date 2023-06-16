require './lib/fibonacci'

RSpec.describe 'Fibonacci' do
  describe '#fibs' do
    it 'returns an array of n numbers from the fibonacci sequence using iteration' do
      expect(fibs(8)).to eq([0, 1, 1, 2, 3, 5, 8, 13])
    end
  end

  describe '#fibs_rec' do
    it 'returns an array of n numbers from the fibonacci sequence using recursion' do
      expect(fibs_rec(8)).to eq([0, 1, 1, 2, 3, 5, 8, 13])
    end
  end
end