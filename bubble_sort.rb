def bubble_sort(arr)
  len = arr.length

  loop do
    swapped = false

    (len - 1).times do |a|
      next if arr[a] > arr[a + 1]
        temp = arr[a]
        arr[a] = arr[a + 1]
        arr[a + 1] = temp
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

sort = [3, 1, 4, 7]
p bubble_sort(sort)

def bubble_sort_by(arr)
  len = arr.length

  loop do
    swapped = false

    (len - 1).times do |a|
      next if yield(arr[a], arr[a + 1]).positive?
        temp = arr[a]
        arr[a] = arr[a + 1]
        arr[a + 1] = temp
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

sort_by = bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
p sort_by
