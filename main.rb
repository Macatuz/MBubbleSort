def bubble_sort(arr)
  while (!isSorted(arr))
    for i in 0..arr.count - 1
      break if i == arr.count - 1
      Switch(i, i + 1, arr) if arr[i] > arr[i + 1]
    end
  end
  arr
end

def Switch(indexA, indexB, arr)
  indexA, indexB = indexB, indexA
end

def isSorted(arr)
  isSorted = 0
  for i in 0..(arr.count - 1)
    next if i === 0
    break if arr[i] < arr[i - 1]
    isSorted += 1
  end
  isSorted == arr.count - 1
end

def isStringSorted(arr)
  isSorted = 0
  for i in 0..(arr.count - 1)
    next if i === 0
    break if arr[i].length < arr[i - 1].length
    isSorted += 1
  end
  isSorted == arr.count - 1
end

def bubble_sort_by(arr)
  if block_given?
    while (!isStringSorted (arr))
      for i in 0..(arr.count - 1)
        next if i === 0
        if yield(arr[i - 1], arr[i]) > 0
          Switch(i - 1, i, arr)
        end
      end
    end
  end
  p arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
bubble_sort_by(["hi", "hello", "hey"]) do |a, b|
  a.length - b.length
end
