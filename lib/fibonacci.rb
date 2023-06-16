def fibs(max_count)
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

def fibs_rec(n, count = 0, current_next = [0, 1])
  return current_next[0] if n == count

  fibs_rec(n, count + 1, [current_next[1], current_next[0] + current_next[1]])
end


def fibs_value_at(n, count = 0, current_next = [0, 1])
  return current_next[0] if n == count

  fibs_value_at(n, count + 1, [current_next[1], current_next[0] + current_next[1]])
end

