
def bubble_sort(array)
  temp_value = 0
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
    break unless swapped
  end
  array
end

p bubble_sort([1,2,3])
