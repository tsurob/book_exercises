

words = ['today', 'yesterday', 'so', 'A', 'are','yet', 'so','sale']#gets.chomp

def sort(the_array)
  return the_array if the_array.size <= 1
  middle = the_array.size / 2
  left  = the_array[0, middle]
  right = the_array[middle, the_array.size-middle]
  recursive_sort(sort(left), sort(right))
end
 
def recursive_sort(left, right)
  sorted = []
  until left.empty? or right.empty?
    if left.first.downcase < right.first.downcase
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  # sorted << left
  # sorted << right
  sorted.concat(left).concat(right)
end
puts sort(words).join(' ')
# def bubble_sort(the_array)
#   return the_array if the_array.size <= 1 # already sorted

#   loop do
#     sorted = false
    
#     for i in 0..(the_array.size-2) 
#       if the_array[i] > the_array[i+1]
#         the_array[i], the_array[i+1] = the_array[i+1], the_array[i] # swap values
#         sorted = true
#       end
#     end

#     break unless sorted
#   end
#   the_array
#   #bubble_sort(@words).join(' ')
# end
# puts bubble_sort


