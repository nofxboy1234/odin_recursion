require 'pry-byebug'

def fib_value_at_index(num)
  if [0, 1].include?(num)
    num
  else
    two_before_num = fib_value_at_index(num - 2, tabs + 2)
    one_before_num = fib_value_at_index(num - 1, tabs + 2)

    two_before_num + one_before_num
  end
end

def fib_value_at_index2(n, count = 0, current_next = [0, 1])
  return current_next[0] if n == count

  fib_value_at_index(n, count + 1, [current_next[1], current_next[0] + current_next[1]])
end

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
  # binding.pry
  case max_count
  when 0
    puts 'Not a valid count of fibonacci numbers'
    return
  when 1
    [0]
  when 2
    [0, 1]
  else
    # recursive case: when max_count is >= 3
    fib = fibs_rec(max_count - 1)
    fib << fib[-2] + fib[-1]
  end
end


# fibs_rec(3)
