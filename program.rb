def bubble_sort(array)

  array_size = array.length
  is_sorted = false
  count = 0

  while !is_sorted
    (array_size-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        count += 1
      end
    end

    if array == array.sort
      is_sorted = true
    end
  end
  
  puts "Number of sorts: #{count}"
  return array
end

test_array_1 = 10.times.map { rand(1..20) }
test_array_2 = 10.times.map { rand(1..20) }
test_array_3 = 10.times.map { rand(1..20) }

bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

bubble_sort(test_array_1)
bubble_sort(test_array_2)
bubble_sort(test_array_3)