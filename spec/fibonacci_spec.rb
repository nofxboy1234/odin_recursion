require './lib/fibonacci'

RSpec.describe 'Fibonacci' do
  describe '#fibs' do
    it 'returns an array of n numbers from the fibonacci sequence' do
      expect(fibs(8)).to eq([0, 1, 1, 2, 3, 5, 8, 13])
    end
  end
end