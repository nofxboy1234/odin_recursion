def fibs(max_count)
  # [0, 1, 1, 2, 3, 5, 8, 13]
  fib = []
  (0..max_count - 1).each do |num|
    if [0, 1].include?(num)
      fib << num
    else
      fib << [fib[-2], fib[-1]].sum
    end
  end
  fib
end

def fib_value(n, count = 0, current_next = [0, 1])
  return current_next[0] if n == count

  fib_value(n, count + 1, [current_next[1], current_next[0] + current_next[1]])
end
