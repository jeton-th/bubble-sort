def bubble_sort(a)

    (a.length-1).times {       
        for i in 0...a.length-1
            a[i], a[i+1] = a[i+1], a[i] if a[i] > a[i+1]
        end
    }
    a

end

a = [9,8,7,1,6]

puts bubble_sort(a)