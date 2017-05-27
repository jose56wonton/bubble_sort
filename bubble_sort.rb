

def bubble_sort unsorted_array
  loop do
    swapped = false
    for i in 1...unsorted_array.length do
      if unsorted_array[i-1]>unsorted_array[i]
        temp = unsorted_array[i]
        unsorted_array[i] = unsorted_array[i-1]
        unsorted_array[i-1] = temp
        swapped = true
      end
    end
    break if swapped == false
  end
  return unsorted_array

end


def bubble_sort_by unsorted_array
  loop do
    swapped = false
    for i in 1...unsorted_array.length do
      if yield(unsorted_array[i],unsorted_array[i-1])<0
        temp = unsorted_array[i]
        unsorted_array[i] = unsorted_array[i-1]
        unsorted_array[i-1] = temp
        swapped = true
      end
    end
    break if swapped == false
  end
  return unsorted_array

end


puts "#{bubble_sort([4,3,78,2,0,2])}"

puts "#{bubble_sort_by(["hi","hello","hey"]) {|left,right| left.length-right.length}}"
