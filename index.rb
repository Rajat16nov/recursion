def fibs (n)
  sequence = []
  for i in 1..n do
    if sequence.length < 2
      sequence << i-1
    else
      sequence << sequence[i-3] + sequence[i-2]
    end
  end
  sequence
end
puts "Fibonacci without recursion"
p fibs(8)

def fibs_rec(n, sequence = [0, 1])
  return sequence[0, n] if n <= 2
  if sequence.length < n
    sequence << sequence[-2] + sequence[-1]
    fibs_rec(n, sequence)
  else
    sequence
  end
end

puts "Fibonacci with recursion"
p fibs_rec(8)


def merge_sort(array)
  if array.length <= 1
    return array
  else
    mid = array.length / 2
    left_half = array[0...mid]
    right_half = array[mid..-1]
    sorted_left = merge_sort(left_half)
    sorted_right = merge_sort(right_half)
    merge(sorted_left, sorted_right)
  end
end

def merge(left, right)
  merged_array = []
  while left.length > 0 && right.length > 0
    if left[0] < right[0]
      merged_array << left.shift
    else
      merged_array << right.shift
    end
  end
  merged_array + left + right
end

puts "Merge sort with recursion"
p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
