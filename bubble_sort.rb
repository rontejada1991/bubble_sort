require 'Benchmark'

def bubble_sort (the_array)

  unsorted = the_array.length - 1

  while unsorted > 0
    i = 0
    while i < unsorted do
      if the_array[i] > the_array[i + 1]
        temp = the_array[i]
        the_array[i] = the_array[i + 1]
        the_array[i + 1] = temp
      end
      i += 1
    end
    unsorted -= 1
  end

  return the_array
end

def bubble_sort_check (the_array)

  unsorted = the_array.length - 1

  while unsorted > 0
    i = 0
    switched = false
    while i < unsorted do
      if the_array[i] > the_array[i + 1]
        temp = the_array[i]
        the_array[i] = the_array[i + 1]
        the_array[i + 1] = temp
        switched = true
      end
      i += 1
    end
    if switched 
      return the_array
    else unsorted -= 1
    end
  end

  return the_array
end

sample_array = []

# Fills array with random numbers
25.times do
  num = rand(19)
  sample_array << num
end

puts "Original: #{sample_array.inspect}"
puts "Sorted: #{ bubble_sort(sample_array).inspect }"
puts "Bubble Sort: #{ Benchmark.realtime { bubble_sort(sample_array) }} seconds"
puts "With Completion Check: #{ Benchmark.realtime { bubble_sort_check(sample_array) }} seconds"

