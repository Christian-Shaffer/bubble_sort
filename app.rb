
def bubble_sort(array)
  temp_value = 0
  (array.length - 1).times do
    array.each_index do |index|
      if index < array.length - 1 && array[index] > array[index + 1]
        temp_value = array[index]
        array[index] = array[index + 1]
        array[index + 1] = temp_value
      end
    end
  end
  array
end

p bubble_sort([9,6,5,3,2])
