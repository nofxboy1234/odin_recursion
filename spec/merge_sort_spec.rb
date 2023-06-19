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

    context 'when the array length is completely shuffled' do
      it 'returns a sorted array' do
        expect(merge_sort([4, 8, 6, 2, 1, 7, 5, 3])).to eq([1, 2, 3, 4, 5, 6, 7, 8])
      end
    end

    context 'when the array has left half sorted' do
      it 'returns a sorted array' do
        expect(merge_sort([2, 4, 6, 8, 1, 7, 5, 3])).to eq([1, 2, 3, 4, 5, 6, 7, 8])
      end
    end

    context 'when the array has right half sorted' do
      it 'returns a sorted array' do
        expect(merge_sort([4, 8, 6, 2, 1, 3, 5, 7])).to eq([1, 2, 3, 4, 5, 6, 7, 8])
      end
    end

    context 'when the array has first 2 numbers sorted' do
      it 'returns a sorted array' do
        expect(merge_sort([2, 4, 8, 6, 1, 7, 5, 3])).to eq([1, 2, 3, 4, 5, 6, 7, 8])
      end
    end

    context 'when the array is sorted in reverse' do
      it 'returns a sorted array' do
        expect(merge_sort([8, 7, 6, 5, 4, 3, 2, 1])).to eq([1, 2, 3, 4, 5, 6, 7, 8])
      end
    end

    context 'when the array is already sorted' do
      it 'returns a sorted array' do
        expect(merge_sort([1, 2, 3, 4, 5, 6, 7, 8])).to eq([1, 2, 3, 4, 5, 6, 7, 8])
      end
    end

  end
end
