def bubble_sort(array)

  is_sorted = false
  count = 0

  unless is_sorted == true
    array.each_with_index do |a, index_a|
      array.each_with_index do |b, index_b|
        if a > b 
          array[index_a], array[index_b] = array[index_b], array[index_a]
        end
      end
    end

    count++

    if array == array.sort
      is_sorted = true
    end
  end

  puts "Number of sort: #{count}"
  return array
end

test_array_1 = 20.times.map { rand(1..20) }
test_array_2 = 20.times.map { rand(1..20) }
test_array_3 = 20.times.map { rand(1..20) }

bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]
bubble_sort(test_array_1)
bubble_sort(test_array_2)
bubble_sort(test_array_3)