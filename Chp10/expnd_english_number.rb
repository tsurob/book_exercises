def english_number number 
	if number < 0 # No negative numbers.
		return 'Please enter a number that isn\'t negative.'
	end
	if number == 0
		return 'zero'
	end
	# No more special cases! No more returns!
	num_string = '' # This is the string we will return.
	ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	teenagers  = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 
		'seventeen', 'eighteen', 'ninteen']
	tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 
		'eighty', 'ninenty']
	
	# "left" is how much of the number 
	#   	we  still have left to write out.
	#  "write" is the part we are 
	#      writing out right now.
	left = number
	write = left/1000000000000 # How many thousands left
	left = left - write*1000000000000 # Subtract off those hundreds.
	if write > 0
		# Now here's the recursion:
		trillions = english_number write
		num_string = num_string + trillions + ' triillion '
		if left > 0
			# So we don't write 'two hundredfifty-one'..
			num_string = num_string + ''
		end
	end
	write = left/1000000000 # How many thousands left
	left = left - write*1000000000 # Subtract off those hundreds.
	if write > 0
		# Now here's the recursion:
		billions = english_number write
		num_string = num_string + billions + ' billion '
		if left > 0
			# So we don't write 'two hundredfifty-one'..
			num_string = num_string + ''
		end
	end

	write = left/1000000 # How many thousands left
	left = left - write*1000000 # Subtract off those hundreds.
	if write > 0
		# Now here's the recursion:
		millions = english_number write
		num_string = num_string + millions + ' million '
		if left > 0
			# So we don't write 'two hundredfifty-one'..
			num_string = num_string + ''
		end
	end
	write = left/1000 # How many thousands left
	left = left - write*1000 # Subtract off those hundreds.
	if write > 0
		# Now here's the recursion:
		thousands = english_number write
		num_string = num_string + thousands + ' thousand '
		if left > 0
			# So we don't write 'two hundredfifty-one'..
			num_string = num_string + ''
		end
	end
	write = left/100 # How many humdreds left
	left = left - write*100 # Subtract off those hundreds.
	if write > 0
		# Now here's the recursion:
		hundreds = english_number write
		num_string = num_string + hundreds + ' hundred '
		if left > 0
			# So we don't write 'two hundredfifty-one'..
			num_string = num_string + ''
		end
	end
	write = left/10 #How many tens left?
	left = left - write*10 #subtract of those tens.
	if write > 0 
		if ((write == 1) and (left > 0))
			# Since we can't write "tenty-two" instead of
			# "twelve", we have to make a special exception 
			# for these.
			num_string = num_string + teenagers[left-1]
			# The "-1" is because teenagers[3] is 'fourteen', 
			# not 'thirteen'. Since we took care of the digit in 
			# one place already, we have nothing left to write.
			left = 0
		else
			num_string = num_string + tens_place[write-1]
			# The "-1" is because tens_place[3] is 'forty',
			# and not 'thirty'.
		end
		if left > 0
			# So we don't write 'sixtyfour'...
			num_string = num_string + '-'
		end
	end
	write = left # How may ones left to write out?
	left = 0 # Subtract off those ones.
	if write > 0
		num_string = num_string + ones_place[write-1]
		# The "-1" is because one_place[3] is 'four', not 'three'.
	end
		# Now we just return "num_string"...
		num_string
end
puts english_number(0)
puts english_number(9)
puts english_number(10)
puts english_number(11)
puts english_number(17)
puts english_number(32)
puts english_number(88)
puts english_number(99)
puts english_number(100)
puts english_number(1000)
puts english_number(101)
puts english_number(234)
puts english_number(9999999)
puts english_number(10000000000)
puts english_number(10050000900000)