
def bubble_sort(array)
  temp_value = 0 # Placeholder to help swapping one value to another
  (array.length - 1).times do
    swapped = false
    array.each_index do |index|
      if index < array.length - 1 && array[index] > array[index + 1]
        temp_value = array[index]
        array[index] = array[index + 1]
        array[index + 1] = temp_value
        swapped = true
      end
    end
    break unless swapped # Will stop early to save memory if no swap occurred
  end
  array
end

p bubble_sort([99,13,-1,6,3,2,4,33,-5,6])
# Output: [-5, -1, 2, 3, 4, 6, 6, 13, 33, 99]
