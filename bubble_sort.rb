def bubble_sort(arr)
  (arr.length - 1).times do
    for i in 0...arr.length - 1
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] > arr[i + 1]
    end
  end

  arr
end

def bubble_sort_by(arr)
  (arr.length - 1).times do
    for i in 0...arr.length - 1
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if yield(arr[i], arr[i + 1]) > 0
    end
  end

  arr
end

arr = %w[hi hello hey bye goodbye]
puts bubble_sort_by(arr) { |left, right| left.length - right.length }
