def fibs(max_count)
  fib = []
  (0..max_count - 1).each do |num|
    fib << if [0, 1].include?(num)
             num
           else
             [fib[-2], fib[-1]].sum
           end
  end
  fib
end

def fibs_rec(max_count)
  if max_count.zero?
    puts 'Not a valid count of fibonacci numbers'
    return
  end
  # base case: when max_count is 1 or 2
  case max_count
  when 1
    return [0]
  when 2
    return [0, 1]
  else
    # recursive case: when max_count is >= 3
    fib = fibs_rec(max_count - 2)
    fib << fibs_rec(max_count - 1)
  end
end

def fibs_value_at(n, count = 0, current_next = [0, 1])
  return current_next[0] if n == count

  fibs_value_at(n, count + 1, [current_next[1], current_next[0] + current_next[1]])
end
