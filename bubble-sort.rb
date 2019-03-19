def bubble_sort(a)
  (a.length-1).times {
      for i in 0...a.length-1
        a[i], a[i+1] = a[i+1], a[i] if a[i] > a[i+1]
      end
  }
  a
end

def bubble_sort_by(a)
  (a.length-1).times {
      for i in 0...a.length-1
        a[i], a[i+1] = a[i+1], a[i] if yield(a[i], a[i+1]) > 0
      end
  }
  a
end

puts bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length }
# ["hi", "hey", "hello"]
