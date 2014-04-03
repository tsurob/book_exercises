

some_num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# def swap_values(index_one,  index_two)
# 		temp = @some_num[index_0ne]
# 		@some_num[index_one] = @some_num[index_two]
# 		@some_num[index_two] = temp
# end
def shuffel some_arr
	rand_indx = 0
	temp = []
	return some_arr if some_arr.length <= 1

	#loop from 0 - length of the the array
	for i in 0..(some_arr.length - 1)
		
	    # Generate a random number between 0 and i 
		rand_indx = rand(0..i)
		
		# swap i with the location of that random number. 
		# swap_values(i,  rand_indx)
		temp = some_arr[i]
		some_arr[i] = some_arr[rand_indx]
		some_arr[rand_indx] = temp
		
	end
	some_arr	
end
puts(shuffel(some_num).join(', '))

