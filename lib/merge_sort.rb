def merge_sort(array)
  if array.length < 2
    array
  else
    left_half = merge_sort(array[0, array.length / 2])
    right_half = merge_sort(array[(array.length / 2), array.length / 2])

    sorted_array = []
    while left_half.length.positive? && right_half.length.positive?
      sorted_array << if left_half.first < right_half.first
                        left_half.shift
                      elsif right_half.first < left_half.first
                        right_half.shift
                      else
                        left_half.shift
                      end
    end

    if left_half.empty?
      sorted_array + right_half
    elsif right_half.empty?
      sorted_array + left_half
    end
  end
end
