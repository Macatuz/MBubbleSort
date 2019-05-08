def bubble_sort(arr)
  result = []
  for i in 1..arr.count
    result.push(minimun(arr))
  end
  return result
end

def minimun(arr)
  p "array is #{arr}"
  result = 1000
  resultindex = 0

  arr.each_with_index do |value, index|
    if value < result
      result = value
      resultindex = index
    end
  end

  arr.delete_at(resultindex)
  return result
end

p bubble_sort([4, 3, 78, 2, 0, 2])
