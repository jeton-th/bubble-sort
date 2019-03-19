def bubble_sort(a)

    swap = 0
    (a.length-1).times {

        if (swap)
            swap = 0
        else
            break # nothing to swap
        end

        for i in 0...a.length-1
            if (a[i] > a[i+1]) 
                a[i], a[i+1] = a[i+1], a[i]
                swap = 1
            end
        end
    }

    return a
end

a = [99,8,48,12,6]

puts bubble_sort(a)