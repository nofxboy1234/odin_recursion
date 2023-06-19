require './lib/merge_sort'

RSpec.describe 'MergeSort' do
  describe '#merge_sort' do
    context 'when the array length is 0' do
      it 'returns the array unchanged' do
        expect(merge_sort([])).to eq([])
      end
    end

    context 'when the array length is 1' do
      it 'returns the array unchanged' do
        expect(merge_sort([4])).to eq([4])
      end
    end

    it 'returns a sorted array' do
      expect(merge_sort([4, 8, 6, 2, 1, 7, 5, 3])).to eq([1, 2, 3, 4, 5, 6, 7, 8])
    end
  end
end