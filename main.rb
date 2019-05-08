def bubble_sort(arr)
  while (!isSorted(arr))
    for i in 0..arr.count - 1
      break if i == arr.count - 1
      Switch(i, i + 1, arr) if arr[i] > arr[i + 1]
    end
  end
  return arr
end

def Switch(indexA, indexB, arr)
  valueA = arr[indexA]
  valueB = arr[indexB]
  arr[indexA] = valueB
  arr[indexB] = valueA
end

def isSorted(arr)
  isSorted = 0
  for i in 0..(arr.count - 1)
    next if i === 0
    break if arr[i] < arr[i - 1]
    isSorted += 1
  end
  return isSorted == arr.count - 1
end

p bubble_sort([4, 3, 78, 2, 0, 2])
